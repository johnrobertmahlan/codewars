def digital_root(n)
  loop do
    n = n.digits.reduce(:+)
    break if n.to_s.length == 1
  end
  n
end

p digital_root(132189)