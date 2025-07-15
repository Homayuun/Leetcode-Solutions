//151. Reverse Words in a String
//leetcode link: https://leetcode.com/problems/reverse-words-in-a-string

class Solution {
    func reverseWords(_ s: String) -> String {
      return s.split(separator: " ").reversed().joined(separator: " ")
    }
}
