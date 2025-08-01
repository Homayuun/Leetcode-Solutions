#leetcode link: https://leetcode.com/problems/count-the-digits-that-divide-a-number

class Solution:
    def countDigits(self, num: int) -> int:
        count = 0
        original = num
        
        while num != 0:
            r = num % 10
            if original % r == 0:
                count += 1
            num //= 10
        return count
