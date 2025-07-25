//Selection Sort Algorithm:

// Time Complexity => O(n(n-1)/2) or O(n^2)
// Space Complexity => O(1)

func selection_sort(_ array: inout [Int]) -> [Int] {
    for i in 0..<array.count - 1 {
        var current_minimum_element_index = i
        for j in i+1..<array.count {
            if array[current_minimum_element_index] > array[j] {
                current_minimum_element_index = j
            }
        }
        array.swapAt(i, current_minimum_element_index)
    }
    return array
}

var array = [9,2,4,1,5,3]
selection_sort(&array)
print(array)
// [1, 2, 3, 4, 5, 9]
