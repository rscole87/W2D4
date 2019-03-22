# def my_min(arr)
#   (0...arr.length).each do |i|
#     is_min = true
#     (0...arr.length).each do |j|
#       if j != i
#         is_min = false if arr[i] > arr[j]
#       end
#     end
#     return arr[i] if is_min
#   end
# end


# def my_min(arr)
#   min = nil
#   arr.each do |ele|
#     if min == nil || ele < min
#       min = ele
#     end
#   end
#   return min
# end

# def largest_contiguous_subsum(arr)
#   subs_arr = []
#   (0...arr.length).each do |i|
#     (i...arr.length).each do |j|
#       subs_arr.push(arr[i..j])
#     end
#   end
#   max = nil
#   subs_arr.each { |el| max = el.sum if  max == nil || el.sum > max}
#   max
# end

# def largest_contiguous_subsum(arr)
#   total_max = nil
#   current_max = 0
#   arr.each do |ele|
#     current_max += ele
#     total_max = current_max if total_max == nil || current_max > total_max
#     current_max = 0 if current_max < 0
#   end
#   total_max
# end

