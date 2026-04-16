var q = fs.readFileSync("/otro/progs/mini_sistemas/ms_windows_101/decompilar/windows1fda.fasm.ndisasm.asm")+""
var w = q.split("\n").filter(x=>x.includes(" SI")).map(x=>[x,x.split(/\s+|\)|\(|\.\.\./g).filter(x=>x)])
var e = w.map(x=>[x[0],x[1].slice(x[1].indexOf("SI")+1)])
var r = e.sort((a,b)=> +a[1][0] - +b[1][0] ).map(x=>x[0]).join("\n").replace(/ SI /g,"")
fs.writeFileSync("w101_asm_ordenado.asm",r)
