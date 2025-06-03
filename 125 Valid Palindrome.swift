//leetcode link:
//https://leetcode.com/problems/valid-palindrome/

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = s.lowercased()
        var left = s.startIndex
        var right = s.index(before: s.endIndex)
        
        while left < right {
            while left < right && !s[left].isLetter && !s[left].isNumber {
                left = s.index(after: left)
            }
            while left < right && !s[right].isLetter && !s[right].isNumber {
                right = s.index(before: right)
            }
            if s[left] != s[right] {
                return false
            }
            left = s.index(after: left)
            right = s.index(before: right)
        }
        return true
    }
}

let sol = Solution()
print(sol.isPalindrome("A man, a plan, a canal: Panama"))  // ➜ true
