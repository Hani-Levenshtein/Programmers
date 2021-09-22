import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    let stages = stages.sorted(by: <)
    var answer: [Float] = []
    let cnt = stages.count
    for i in 1...N {
        if let first: Int = stages.firstIndex(of: i) {
            let last: Int = stages.lastIndex(of: i) ?? cnt
            answer.append((Float(last-first+1))/(Float(cnt-first)))
        } else {
            answer.append(0)
        }
        
    }
    return answer.enumerated().sorted(by: {
            if $0.1 != $1.1 {
                return $0.1 > $1.1
            }
            return $0.0 < $1.0
        }).map{ $0.0+1 }
}