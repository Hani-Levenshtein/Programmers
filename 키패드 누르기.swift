import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var leftPos = 10
    var rightPos = 12
    var answer = String()
    numbers.forEach {
        switch $0 {
            case 1, 4, 7:
                answer.append("L")
                leftPos = $0
            case 3, 6, 9:
                answer.append("R")
                rightPos = $0
            default: 
                var num = $0 == 0 ? 11 : $0
                let leftGap = abs(leftPos - num) % 3 + abs(leftPos - num) / 3
                let rightGap = abs(rightPos - num) % 3 + abs(rightPos - num) / 3
                if leftGap == rightGap {
                    if hand == "left" {
                        answer.append("L")
                        leftPos = num
                    } else {
                        answer.append("R")
                        rightPos = num
                    }
                } else if leftGap > rightGap {
                    answer.append("R")
                    rightPos = num
                } else {
                    answer.append("L")
                    leftPos = num
                }
        }
    }
    return answer
}