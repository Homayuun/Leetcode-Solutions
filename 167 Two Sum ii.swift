//Leetcode link: https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        for i in 0..<numbers.count {
            var l = i + 1, r = numbers.count - 1
            let tmp = target - numbers[i]

            while l <= r {
                let mid = l + (r - l) / 2
                if numbers[mid] == tmp {
                    return [i + 1, mid + 1]
                } else if numbers[mid] < tmp {
                    l = mid + 1
                } else {
                    r = mid - 1
                }
            }
        }
        return []
    }
}
