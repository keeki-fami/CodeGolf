let d=[1:"I",4:"IV",5:"V",9:"IX",10:"X",40:"XL",50:"L",90:"XC",100:"C",400:"CD",500:"D",900:"CM",1000:"M"]
for l in CommandLine.arguments.dropFirst() {
	var s=""
	var c=1
	for i in l.reversed(){
		var n=Int("\(i)")!
		if(0...8)~=n && n != 4{
			s = (n>=5 ? d[5*c]! : "") + {String.init}()(d[1*c]!,n%5) + s
		}else{
			s=d[n*c]!+s
		}
		c*=10
	}
	print(s)
}