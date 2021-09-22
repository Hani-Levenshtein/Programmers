func solution(_ s:String) -> String {
    let string = s.map({String($0)})
    let cnt: Int = s.count/2
    if s.count % 2 == 0 {
        return string[cnt-1]+string[cnt]
    } else {
        return string[cnt]
    }
}

