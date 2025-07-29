#leetcode link: https://leetcode.com/problems/add-digits

class Solution:
    def addDigits(self, num: int) -> int:
        num = str(num)
        while len(num) > 1:
            tmp = 0
            for n in num:
                tmp += int(n)
            num = str(tmp)
        return int(num)
        
