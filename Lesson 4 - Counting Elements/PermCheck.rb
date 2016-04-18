def solution(a)
  helper_array = Array(1..a.length)
  a.each do |element|
    helper_array[element - 1] = nil
    unless helper_array.any?
      return 1
    end
  end
  0
end

empty_array = []
one_el_array = [2]
big_int = [100000000]
big_arr = Array(1..100000).shuffle
p solution(empty_array)
p solution(one_el_array)
p solution(big_int)
p solution(big_arr)