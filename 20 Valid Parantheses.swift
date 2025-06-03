// Leetcode Link:
// https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: Array<Character> = []
        let closeToOpen: [Character: Character] = [")": "(", "]": "[", "}":"{"]
        for c in s {
            if !stack.isEmpty && closeToOpen[c] == stack.last {
                stack.popLast()
            } else {
                stack.append(c)
            }
        }
        return stack.isEmpty
    }
}
