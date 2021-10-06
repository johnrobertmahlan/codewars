def even_or_odd(s)
  evens = s.to_i.digits.select {|d| d % 2 == 0}.reduce(:+)
  odds = s.to_i.digits.reject {|d| d % 2 == 0}.reduce(:+)
  if evens > odds
    "Even is greater than Odd"
  elsif odds > evens
    "Odd is greater than Even"
  else
    "Even and Odd are the same"
  end
end

p even_or_odd("12")
p even_or_odd("123")
p even_or_odd("112")