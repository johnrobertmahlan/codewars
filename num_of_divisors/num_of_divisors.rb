def oddity(n)
  # (1..n).select {|d| n % d == 0}.count % 2 == 0 ? "even" : "odd"
  return "even" unless Math.sqrt(n) == Integer.sqrt(n)
  "odd"

end

p oddity(96)
p oddity(48)
p oddity(24)
p oddity(12)
p oddity(6)
p oddity(4)
p oddity(9)
p oddity(16)
p oddity(25)
p oddity(37)
p oddity(121)