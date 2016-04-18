def solution(x, a)
  leafs_positions = Array(1..x)

  a.each_with_index do |element, index|
    leafs_positions[element - 1] = nil
    unless leafs_positions.any?
      last_leaf_position = index
      return last_leaf_position
    end
  end
  -1 # return -1 if there are not enough leafs (when last_leaf_position hasn't been returned)
end

array = [1,3,1,4,2,3,5,4]
array2 = Array(1..100000).shuffle
solution(5, array)

x = Time.now
solution(99999, array2)
time = Time.now - x
p time