def narcissistic?(value)
    value == value.digits.map {|digit| digit ** (value.digits.length)}.reduce(:+)
end

p narcissistic?(153)
p narcissistic?(1652)