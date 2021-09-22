import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer: Int64 = Int64(price * count * (count+1) / 2 - money)
    if answer < 0 { answer = 0 }
    return answer
}