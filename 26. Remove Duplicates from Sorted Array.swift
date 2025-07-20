//leetcode link: https://leetcode.com/problems/remove-duplicates-from-sorted-array

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
           var prev = 0;
        for i in 1..<nums.count {
            if nums[prev] != nums[i] {
                nums[prev+1] = nums[i]
                prev += 1
            }
        }
        return prev+1
    }
}
