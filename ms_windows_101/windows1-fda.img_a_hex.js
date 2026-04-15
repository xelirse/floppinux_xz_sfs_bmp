var q = "/otro/progs/mini_sistemas/ms_windows_101/windows1-fda/windows1fda.img"
var w = fs.readFileSync(q)
var e = [...w].map(x=>(256+x).toString(16).slice(1)).join("").toUpperCase()
fs.writeFileSync(q+".hx.txt",e)
