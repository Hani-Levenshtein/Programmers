import Foundation

var min: Int = 9
var nums: [Int: Int] = [:]

func solution(_ N:Int, _ number:Int) -> Int {
    nums[1] = 2
    nums[1*N] = 1
    nums[11] = 3
    nums[11*N] = 2
    nums[111] = 4
    nums[111*N] = 3
    nums[1111] = 5
    nums[1111*N] = 4
    nums[11111] = 6
    nums[11111*N] = 5
    dfs(0,0,number)
    return min != 9 ? min : -1
}

func dfs(_ count: Int, _ sum: Int, _ target: Int) {
    if count >= min { return }
    if (sum == target) { 
        min = count
        return 
    }
    for (key, value) in nums {
        dfs(count+value, sum+key, target)
        dfs(count+value, sum/key, target)
        dfs(count+value, sum-key, target)
        dfs(count+value, sum*key, target)
    }
}