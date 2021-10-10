def persistence(n)
  count = 0
  loop do
    break if n.digits.size == 1
    n = n.digits.reduce(:*)
    count += 1
  end
  count
end

p persistence(39)
p persistence(4)