#leetcode link: https://leetcode.com/problems/check-if-the-sentence-is-pangram/
class Solution:
    def checkIfPangram(self, sentence: str) -> bool:
        s = set(sentence)
        for i in s:
            if "a" <= i <= "z" and len(s) == 26:
                return True
        return False
