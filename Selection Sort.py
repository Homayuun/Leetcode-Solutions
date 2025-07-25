# Selection Sort Algorithm:

# Time Complexity => O(n(n-1)/2) or O(n^2)
# Space Complexity => O(1)

def selection_sort(arr) -> list:
    
    for i in range(len(arr)-1):
        current_minimum_element_index = i
        for j in range(i+1, len(arr)):
            if arr[j] < arr[current_minimum_element_index]:
                current_minimum_element_index = j
        arr[i], arr[current_minimum_element_index] = arr[current_minimum_element_index], arr[i]

    return arr


arr = [9,2,4,1,5,3]
selection_sort(arr)
print(arr)
# [1, 2, 3, 4, 5, 9]


