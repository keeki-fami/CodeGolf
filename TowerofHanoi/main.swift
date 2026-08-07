func h(_ s:Int,_ i:Int,_ c:Int){if c>1{h(s,6-s-i,c-1)};print("\(s) -> \(6-s-i)");if c>1{h(i,s,c-1)}}
h(1,2,9)