//leetcode link: https://leetcode.com/problems/can-place-flowers
class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowersPlanted = 0
        var bed = flowerbed

        for i in 0..<bed.count {
            let isEmpty = bed[i] == 0
            let leftEmpty = (i == 0) || (bed[i - 1] == 0)
            let rightEmpty = (i == bed.count - 1) || (bed[i + 1] == 0)

            if isEmpty && leftEmpty && rightEmpty {
                bed[i] = 1
                flowersPlanted += 1

                if flowersPlanted >= n {
                    return true
                }
            }
        }

        return flowersPlanted >= n
    }
}
