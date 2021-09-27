func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).lazy.map { arr1row, arr2row in zip(arr1row, arr2row).lazy.map { arr1elem, arr2elem in arr1elem + arr2elem } }
}
