#leetcode link: https://leetcode.com/problems/minimum-number-game/

class Solution:
    def numberGame(self, nums: [int]) -> [int]:
        sn = sorted(nums)
        for i in range(0, len(nums), 2):
            sn[i], sn[i+1] = sn[i+1], sn[i]
        return sn
