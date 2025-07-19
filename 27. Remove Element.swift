//leetcode link: https://leetcode.com/problems/remove-element

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        var j = nums.count - 1
        
        while i <= j {
            if nums[i] == val {
                nums.swapAt(i, j)
                nums.remove(at: j)
                j -= 1
            } else {
                i += 1
            }
        }
        return nums.count
    }
}
