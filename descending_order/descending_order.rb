def descending_order(n)
  n.digits.sort.reverse.join.to_i
end

p descending_order(123456789)