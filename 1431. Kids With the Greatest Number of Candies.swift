// leetcode link: https://leetcode.com/problems/kids-with-the-greatest-number-of-candies

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result: [Bool] = []
        let n = candies.count
        var l = 0
        while l < n {
            var r = 0
            var res = false
            while r < n {
                res = candies[l] + extraCandies >= candies[r]
                if res == false {
                    break
                }
                r += 1
            }
            result.append(res)
            l += 1
        }
        return result
    }
}

