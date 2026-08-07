(2...200).map{i in
if i<(1...i-1).filter{i%$0==0}.reduce(0,+){print(i)}}
