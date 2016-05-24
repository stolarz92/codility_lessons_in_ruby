# Corectness: 100%, Performance: 100%
def solution(a)
  # write your code in Ruby 2.2
  passing_cars = 0
  east = 0
  a.each do |p|
    if p == 0
      east += 1
    else
      passing_cars += east
    end
  end
  passing_cars > 1000000000 ? -1 : passing_cars
end

a = [0, 1, 0, 1, 1]
solution(a)