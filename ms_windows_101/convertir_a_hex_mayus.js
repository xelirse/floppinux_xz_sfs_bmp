var q = fs.readFileSync("/otro/progs/mini_sistemas/ms_windows_101/windows1-fda/windows1-fda.img")
var w = [...q].map(x=>(256+x).toString(16).toUpperCase().slice(1)).join("").match(/.{56}/g).map(x=>x.match(/.{8}/g))
var e = []
for(var i=0;i<w.length;++i){
	var a = w[i]
	var t = a.join(" ")
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
var j = -1
var y = e.map(x=>{
	++j
	var k = ((1e5+j)+"").slice(1).replace(/^0000/g,"    ").replace(/^000/g,"   ").replace(/^00/g,"  ").replace(/^0/g," ")
	var f = ((1e4+x[0])+"").slice(1)
	if(+f==1){ f = f.replace(/1/g," ") }
	var g = f.replace(/^000/g,"   ").replace(/^00/g,"  ").replace(/^0/g," ")
	return k+" "+g+" "+x[1]
}
).join("\n")
fs.writeFileSync("windows101_hex_mayus.txt",y)
