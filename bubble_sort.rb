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

def bubble_sort_by(arr)
  n = arr.length - 1
  loop do
    swapped = false
    n.times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

arr = [2,3,100,3,5,4,10,7]
puts bubble_sort(arr)