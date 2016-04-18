def solution(a)
  array_length = a.length
  hash = Hash[(1..array_length + 1).map { |num| [num, 0]}]
  missing = nil

  if array_length == 0
    return 1
  end

  a.each do |element|
    hash[element] += 1
  end

  hash.each do |key, val|
    if val == 0
      missing = key
    end
  end
  p missing
end
# array = [1,5,3,2]
# zero_element_array = []
# one_element_array= [2]
# two_elements_array = [1,3]
#
# solution(array)
# solution(zero_element_array)
# solution(one_element_array)
# solution(two_elements_array)