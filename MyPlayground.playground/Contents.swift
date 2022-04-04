import UIKit

var dict = ["a":["1":(correct:1,total:2),"2":(correct:1, total:1)], "b":["3":(correct:3,total:4)], "c":["4":(correct:3,total:4),"5":(correct:3,total:4)]]

print(dict.map{$1.count}.reduce(0, +))
//print(dict.map{$1:$0})
print(dict.values.reduce([],+).map{$0.key})
print(Array(dict.values).reduce([],+).sorted{$0.value.correct < $1.value.correct})
