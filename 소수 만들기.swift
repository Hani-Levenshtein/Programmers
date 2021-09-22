import Foundation

func solution(_ nums:[Int]) -> Int {
    
    var answer = 0
    var primes = Array(repeating: true, count: 3000+1)
    primes[1] = false
    
    var i = 2
    while i<Int(sqrt(Double(3000))) {
        if primes[i] {
            var j = i*i
            while j <= 3000 {
                primes[j] = false
                j += i
            }
        }
        i += 1
    }

     for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {
                if primes[nums[i] + nums[j] + nums[k]] { answer += 1 }
            }
        }
    }
    
    return answer
}


