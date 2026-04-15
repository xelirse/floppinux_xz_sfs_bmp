var q = fs.readFileSync("/otro/progs/mini_sistemas/ms_windows_101/windows1-fda/windows1-fda.img")
var w = [...q]
var e = []
for(var i=0;i<w.length/32;++i){
	var r = w.slice( i*32, (i+1)*32 )
	var t = (32n**52n+eval("0x"+r.map(x=>x.toString(16)).join("")+"n")).toString(32).slice(1)
	var u = e.slice(-1)[0]
	if(u==null){
		e.push([1,t])
	}else{
		if(u[1]==t){
			++e[e.length-1][0]
		}else{
			e.push([1,t])
		}
	}
}
var y = e.map(x=>((1e4+x[0])+"").slice(1)
		.replace(/^000/g,"   ")
		.replace(/^00/g,"  ")
		.replace(/^0/g," ")
	+" "+x[1]
).join("\n")
fs.writeFileSync("windows101_base32.txt",y)
