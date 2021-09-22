func solution(_ s:String) -> Bool {
    return s.first{ !$0.isNumber } == nil && (s.count == 4 || s.count == 6)
}