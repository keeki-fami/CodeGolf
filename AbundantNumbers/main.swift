(2...200).map{i in
if i<(1..<i).filter{i%$0<1}.reduce(0,+){print(i)}}
