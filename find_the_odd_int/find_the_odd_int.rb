def find_it(seq)
    arr = seq.reduce([]) do |a, i|
      seq.select {|x| x == i}.count % 2 != 0 ? a << i : a = a
    end
    arr.first
end