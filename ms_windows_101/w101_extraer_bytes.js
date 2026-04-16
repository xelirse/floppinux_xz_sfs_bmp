var q = fs.readFileSync("./w101.asm")+""
console.log(q.split("\n").map(x=>x.slice(51,67)).join("\t"))
