def bad_two_sum?(arr, target_sum)
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end
  false
end

def okay_two_sum?(arr, target_sum)
  arr_sorted = arr.sort
  i = 0 
  j = arr_sorted.length - 1
  until i == j
    return true if arr_sorted[i] + arr_sorted[j] == target_sum
    if arr_sorted[i] + arr_sorted[j] > target_sum
      j -= 1
    else
      i += 1
    end
  end
  false
end

def two_sum?(arr, target_sum)
  hash = {}
  arr.each do |i|
    if hash[target_sum - i]
      return true
    else  
      hash[i] = 0
    end
  end
  false
end