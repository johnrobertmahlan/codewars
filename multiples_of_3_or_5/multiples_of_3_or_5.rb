def solution(number)
  return 0 if !number.positive?
  (0...number).select {|num| num % 3 == 0 || num % 5 == 0}.reduce(:+)
end

p solution(10)
p solution(20)
p solution(-5)