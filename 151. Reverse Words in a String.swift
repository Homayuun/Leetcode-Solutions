//151. Reverse Words in a String
//leetcode link: https://leetcode.com/problems/reverse-words-in-a-string

class Solution {
    func reverseWords(_ s: String) -> String {
        var sArr = Array(s)
        var result = [String]()
        var left = 0
        while left < s.count {
            if sArr[left].isLetter || sArr[left].isNumber {
                var right = left
                while right < sArr.count && sArr[right] != " " {
                    right += 1
                }
                var word = String(sArr[left..<right])
                result.append(word)
                left = right
            }
            left += 1
        }
        return result.reversed().joined(separator: " ")
    }
}
