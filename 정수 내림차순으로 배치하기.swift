func solution(_ n:Int64) -> Int64 {
    return Int64(String(n).map{ Int(String($0))! }.sorted(by: >)
                    .map{ String($0) }.joined())!
}