def per(n)
    arr = Array.new
    return arr if n.to_s.length == 1
    loop do
      n = n.to_s.split("").map {|i| i.to_i}.reduce(:*)
      arr << n
      break if n.to_s.length == 1
    end
    arr
end

p per(277777788888899)