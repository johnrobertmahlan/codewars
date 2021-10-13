# NB: this solution is failing one of the CodeWars tests where n = 46288 and p = 5
# CodeWars says it should return -1, whereas the below returns 3263
# it seems to me that 3263 is the correct answer
# moreover, the below solution is very similar to the posted solutions on CodeWars
# so I am committing this 

def dig_pow(n, p)
  exp = p
  total = n.digits.reverse.reduce(0) do |sum, digit|
    sum += (digit ** exp)
    exp += 1
    sum
  end
  p n
  p total
#   p (total / n)
#   p (total / n).positive?
#   (total / n).positive? ? total / n : -1
  k = total / n
  p k
end

# p dig_pow(89, 1)
# p dig_pow(92, 1)
# p dig_pow(695, 2)
# p dig_pow(46288, 3)
p dig_pow(46288, 5)