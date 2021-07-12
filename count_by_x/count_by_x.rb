def count_by(x, n)
    arr = Array.new
    (x..(x * n)).step(x) {|num| arr << num}
    arr
end