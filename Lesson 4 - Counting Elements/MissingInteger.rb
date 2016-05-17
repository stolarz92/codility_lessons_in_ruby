# Correctness: 100%, Performance: 100%
def solution(a)
  positives = []
  helper_array = []

  a.uniq!
  positives = a.select { |num| num >= 0 }
  helper_array = Array.new(a.length + 1)

  positives.each do |element|
    if element >= 1 && element <= (a.length + 1)
      helper_array[element - 1] = true
    end
  end

  helper_array.each_with_index do |elem, index|
    if elem == nil
      return index + 1
    end
  end

end

a = [1,3,6,4,1,2]
one_elem_zero = [0]
one_elem_one = [1]
extreme_min_max_int = [-2147483648, 2147483647]
p solution(a)
p solution(one_elem_zero)
p solution(one_elem_one)
p solution(extreme_min_max_int)