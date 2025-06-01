// 367 Valid Perfect Square
// https://leetcode.com/problems/valid-perfect-square/

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var start_index = 1
        var end_index = num
        
        while start_index <= end_index {
            // Define a mid and mid squared index for binary search
            let mid_index = (start_index + end_index) / 2
            let mid_squared = mid_index * mid_index
            
            if mid_squared == num {
                return true
            } else if mid_squared < num {
                start_index = mid_index + 1
            } else {
                end_index = mid_index - 1
            }
        }
        return false
    }
}

let sol = Solution()
print(sol.isPerfectSquare(16))
print(sol.isPerfectSquare(17))

