def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]#swap the elements
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end

arr = [2,1,3,5,4,6,8,7,9]

print bubble_sort arr