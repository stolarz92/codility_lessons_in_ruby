#Corectness: 100%, Performance: 80%
def solution(n, a)
  # write your code in Ruby 2.2
  number_of_counters = n
  counters_array = Array.new(number_of_counters, 0)
  max_counter = 0

  a.each do |elem|
    if 1 <= elem && elem <= number_of_counters
      counters_array[elem - 1] += 1
      max_counter = counters_array[elem -1] if max_counter < counters_array[elem - 1]
    elsif elem == number_of_counters + 1
      counters_array = Array.new(number_of_counters, max_counter)
    end
  end
   counters_array
end

a = [3, 4, 4, 6, 1, 4, 4]
n = 5

solution(n, a)