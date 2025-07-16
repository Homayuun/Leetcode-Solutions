//leetcode link: https://leetcode.com/problems/product-of-array-except-self/

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = [Int](repeating: 1, count: n)
        var p = 1
        for i in 0..<n {
            result[i] = p
            p *= nums[i]
        }

        p = 1
        for i in (0..<n).reversed() {
            result[i] *= p
            p *= nums[i]
        }
        
        return result
    }
}
