def is_square(arr)
  return nil if arr.empty?
  arr.all? {|i| Math.sqrt(i) == Math.sqrt(i).to_i}
end

p is_square([1, 4, 9, 16])
p is_square([3, 4, 7, 9])
p is_square([])