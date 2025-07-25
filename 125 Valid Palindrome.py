#leetcode link:
# https://leetcode.com/problems/valid-palindrome/

class Solution:
    def isPalindrome(self, s: str) -> bool:
        l,r = 0, len(s)-1
        s = s.lower()
        
        while l <= r:
            while not s[l].isalnum() and l < r: l += 1
            while not s[r].isalnum() and l < r: r -= 1
            if s[l] != s[r]:
                return False
            l += 1
            r -= 1
        return True
    
Input = "A man, a plan, a canal: Panama"

s = Solution()
print(s.isPalindrome(Input))