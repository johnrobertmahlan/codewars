def square_digits(num)
    num.digits.reverse.map {|d| d**2}.join.to_i
end

p square_digits(2112)