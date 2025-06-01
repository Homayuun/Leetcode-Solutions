
# 367 Valid Perfect Square:
# https://leetcode.com/problems/valid-perfect-square/
print("# Problem Link: https://leetcode.com/problems/valid-perfect-square/")

class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        start_index = 1
        end_index = num

        while start_index <= end_index:
            mid_index = (start_index + end_index) // 2
            mid_squared = mid_index * mid_index

            if num == mid_squared:
                return True
            elif num > mid_squared:
                start_index = mid_index + 1
            elif num < mid_squared:
                end_index = mid_index - 1

        return False    

sol = Solution()
print(sol.isPerfectSquare(16))  # True
print(sol.isPerfectSquare(17))  # False