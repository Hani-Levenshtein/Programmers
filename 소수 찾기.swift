import Foundation
func solution(_ n:Int) -> Int {
    var prime = Array(repeating: true, count: n+1)
    prime[0] = false
    prime[1] = false
    var i = 2
    while i<=Int(sqrt(Double(n))) {
        if prime[i] {
            var j = i*i
            while j <= n {
                prime[j]=false
                j+=i
            }
        }
        i+=1
    }
    
    return prime.filter{$0 == true}.count
}