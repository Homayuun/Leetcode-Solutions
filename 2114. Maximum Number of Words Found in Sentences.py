
#leetcode link: https://leetcode.com/problems/maximum-number-of-words-found-in-sentences

class Solution:
    def mostWordsFound(self, sentences: [str]) -> int:
        spaceCount = 0
        for sentence in sentences:
            tmpCount = 0
            for char in sentence:
                if char == " ":
                    tmpCount += 1
            if spaceCount < tmpCount + 1:
                spaceCount = tmpCount + 1
        return spaceCount

