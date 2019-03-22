def first_anagram?(str1, str2)
  str1.split("").permutation.to_a.include?(str2.split(""))
end

def second_anagram?(str1, str2)
  str2_arr = str2.split("")
  str1.each_char.with_index do |char, i|
    idx = str2_arr.find_index(char)
    str2_arr.delete_at(idx) if idx != nil
  end
  str2_arr.empty?
end

def third_anagram?(str1, str2)
  arr1 = merge_sort(str1.split(""))
  arr2 = merge_sort(str2.split(""))
  arr1 == arr2
end

def merge_sort(arr)
  return arr if arr.length < 2
  half = arr.length / 2
  left = merge_sort(arr[0...half])
  right = merge_sort(arr[half..-1])
  merge(left, right)
end

def merge(arr1, arr2)
  prc = Proc.new { |ele1, ele2| ele1 <=> ele2 }
  merged_arr = []

  until arr1.empty? || arr2.empty?
    if prc.call(arr1[0], arr2[0]) < 0
      merged_arr << arr1.shift
    else 
      merged_arr << arr2.shift
    end
  end
  merged_arr + arr1 + arr2
end

def fourth_anagram?(str1, str2)
  str1_hash = Hash.new { |h,k| h[k] = 0 }
  str2_hash = Hash.new { |h,k| h[k] = 0 }

  str1.each_char do |char|
    str1_hash[char] += 1
  end
  str2.each_char do |char|
    str2_hash[char] += 1
  end

  str1_hash == str2_hash
end

def fourth_anagram?(str1, str2)
  hash = Hash.new { |h,k| h[k] = 0 }

  str1.each_char do |char|
    hash[char] += 1
  end
  str2.each_char do |char|
    hash[char] -= 1
  end

  hash.values.all? { |v| v == 0 }
end