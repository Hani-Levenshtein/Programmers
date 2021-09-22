import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    return (left...right).map{ convert($0) }.reduce(0,+)
}

func convert(_ n: Int) -> Int {
    let cnt = (1...n).filter{ n % $0 == 0 }.count
    return cnt % 2 == 0 ? n : -n
}