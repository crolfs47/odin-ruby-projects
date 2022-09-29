# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (don't use #sort).

def bubble_sort(array)
    p array
    sorted = false
    while !sorted
        i = 0
        sorted = true
        while i < array.length - 1
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                sorted = false
            end
            i += 1
        end
    end
    p array
end

array = [4,3,78,2,0,2]
bubble_sort(array)