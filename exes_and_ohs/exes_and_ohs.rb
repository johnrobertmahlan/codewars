def XO(str)
  exes, ohs = str.scan(/[xo]/i).partition {|c| ["x", "X"].include?(c)}
  exes.length == ohs.length
end

# p XO("xo")
# p XO("xo0")
# p XO("xxOo")
p XO("XO")