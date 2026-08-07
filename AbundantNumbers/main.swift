for i in 2...200{if(1..<i).filter{i%$0<1}.reduce(0,+)>i{print(i)}}
