#!/bin/node

var { execSync } = require('child_process');
var fs = require('fs');
var path = require('path');
var os = require('os');

// --- Configuración ---
var imagePath = "/otro/progs/mini_sistemas/ms_windows_101/windows1-fda/windows1fda.img";
var outputPath = imagePath.split("/").slice(-1)[0].replace(/\..+/g,"")+".hx.txt";

console.log("Leyendo imagen de disco...");
var imageBuffer = fs.readFileSync(imagePath);
var hexImagenStr = imageBuffer.toString('hex').toUpperCase();

/**
 * Convierte un buffer en un array de líneas de 7 columnas hex.
 */
function getHexLines(buffer) {
    let hex = buffer.toString('hex').toUpperCase();
    let blocks = [];
    for (let i = 0; i < hex.length; i += 8) {
        blocks.push(hex.substring(i, i + 8));
    }
    let lines = [];
    for (let i = 0; i < blocks.length; i += 7) {
        lines.push(blocks.slice(i, i + 7).join(' '));
    }
    return lines;
}

/**
 * Formatea una línea con padding generoso para evitar desalineación.
 * Linea: 6 espacios, Repetición: 5 espacios.
 */
function formatLineOutput(lineNum, repeatCount, content) {
    let sLine = lineNum.toString().padStart(6, ' ');
    let sRepeat = repeatCount > 1 ? repeatCount.toString().padStart(5, ' ') : "     ";
    return `${sLine} ${sRepeat} ${content}`;
}

function getValidOffset(image, filename) {
    try {
        var output = execSync(`mshowfat -i ${image} ::${filename}`, { stdio: ['pipe', 'pipe', 'ignore'] }).toString();
        var clusterMatch = output.match(/\d+/);
        if (clusterMatch) {
            var cluster = parseInt(clusterMatch[0], 10);
            return (33 + (cluster - 2)) * 512;
        }
    } catch (e) {}
    return null;
}

function getDiskFiles(imagePath) {
    var tempDir = fs.mkdtempSync(path.join(os.tmpdir(), 'win-analysis-'));
    var files = [];
    try {
        execSync(`mcopy -i ${imagePath} -snm ::* ${tempDir}/`, { stdio: 'ignore' });
        var readRecursive = (dir, base = '') => {
            var items = fs.readdirSync(dir);
            for (var item of items) {
                var fullPath = path.join(dir, item);
                var stat = fs.statSync(fullPath);
                var relPath = path.join(base, item).replace(/\\/g, '/').toUpperCase();
                if (stat.isDirectory()) readRecursive(fullPath, relPath);
                else files.push({ name: relPath, buffer: fs.readFileSync(fullPath) });
            }
        };
        readRecursive(tempDir);
    } finally {
        fs.rmSync(tempDir, { recursive: true, force: true });
    }
    return files;
}

// 1. Análisis de regiones
var extractedFiles = getDiskFiles(imagePath);
var regions = [];
extractedFiles.forEach(f => {
    var fileHex = f.buffer.toString('hex').toUpperCase();
    var realOffset = getValidOffset(imagePath, f.name);
    let pos = hexImagenStr.indexOf(fileHex);
    while (pos !== -1) {
        let bytePos = pos / 2;
        let isReal = (bytePos === realOffset);
        regions.push({ start: bytePos, end: bytePos + f.buffer.length, name: f.name, type: isReal ? "(real)" : "(fantasma)", priority: isReal ? 2 : 1 });
        pos = hexImagenStr.indexOf(fileHex, pos + 1);
    }
});

regions.sort((a, b) => a.start - b.start || b.priority - a.priority);
var cleanRegions = [];
if (regions.length > 0) {
    cleanRegions.push(regions[0]);
    for (let i = 1; i < regions.length; i++) {
        let last = cleanRegions[cleanRegions.length - 1];
        let curr = regions[i];
        if (curr.start >= last.end) cleanRegions.push(curr);
    }
}

// 2. Construcción de segmentos
var segments = [];
var currentPos = 0;
var gapCounter = 0;
cleanRegions.forEach(reg => {
    if (reg.start > currentPos) {
        segments.push({ name: `Sin archivo parte ${gapCounter++}`, buffer: imageBuffer.slice(currentPos, reg.start), type: "" });
    }
    segments.push({ name: reg.name, buffer: imageBuffer.slice(reg.start, reg.end), type: reg.type });
    currentPos = reg.end;
});
if (currentPos < imageBuffer.length) {
    segments.push({ name: `Sin archivo parte ${gapCounter++}`, buffer: imageBuffer.slice(currentPos), type: "" });
}

// 3. Salida final
var finalOutput = "";
var globalLineCounter = 0;

segments.forEach(seg => {
    finalOutput += formatLineOutput(globalLineCounter++, 1, `${seg.name} ${seg.type}`.trim()) + "\n";
    
    let lines = getHexLines(seg.buffer);
    let i = 0;
    
    while (i < lines.length) {
        let count = 1;
        while (i + count < lines.length && lines[i] === lines[i + count]) {
            count++;
        }
        
        finalOutput += formatLineOutput(globalLineCounter, count, lines[i]) + "\n";
        
        globalLineCounter += count;
        i += count;
    }
    finalOutput += "\n"; 
});

fs.writeFileSync(outputPath, finalOutput);

console.log(`\nAnálisis completado.`);
console.log(`Archivo generado: ${outputPath}`);
