let d = [1: "I", 5: "V", 10: "X", 50: "L", 100: "C", 500: "D", 1000: "M"]
while let l = readLine() {
	var n = l
	var s = ""
	var inc = 1
	for i in String(n.reversed()) {
		var num = Int(String(i))!
		if 1 <= num && num <= 3 {
			s = String(repeating: d[1*inc]!, count: num) + s
		} else if num%10 == 4 {
			s = d[1*inc]!+d[5*inc]! + s
		} else if 5 <= num && num <= 8 {
			s = d[5*inc]! + String(repeating: d[1*inc]!, count: num-5) + s
		} else if num%10 == 9 {
			s = d[1*inc]!+d[10*inc]! + s
		}
		inc *= 10
	}
	print(s)
}

