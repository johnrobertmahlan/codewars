def prev_mult_of_three(n)
  return n if n % 3 == 0
  loop do
    n = n.to_s[0..-2].to_i
    break if n % 3 == 0
  end
  n.zero? ? nil : n
end

p prev_mult_of_three(1)
p prev_mult_of_three(25)
p prev_mult_of_three(36)
p prev_mult_of_three(1244)
p prev_mult_of_three(952406)