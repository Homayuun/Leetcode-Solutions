leetcode link: https://leetcode.com/problems/move-zeroes/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var k = 0

        for i in 1..<nums.count {
            if nums[k] == 0 && nums[i] != 0 {
                nums.swapAt(k, i)
                k += 1
            } else if nums[k] != 0 {
                k += 1
            }
        }
    }
}
