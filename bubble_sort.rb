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

def bubble_sort_by(values)
  l = values.length
  loop do
    swapped = false
    (l - 1).times do |i|
      if yield(values[i], values[i + 1]).positive?
        values[i], values[i + 1] = values[i + 1], values[i]
        swapped = true
      end
    end
    break unless swapped
  end
  values
end

# Testing for the two methods
arr = [2,3,100,3,5,4,10,7]

print bubble_sort(arr)
puts

sort_by = bubble_sort_by(arr) do |left,right|
  left - right
end

print sort_by
puts