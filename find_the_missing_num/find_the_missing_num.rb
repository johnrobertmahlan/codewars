def missing_no(nums)
  duo = nums.sort.reverse.each_cons(2).reduce([]) do |d, pair|
    d << pair if pair.reduce(:-) != 1
    d
  end
  duo.flatten.reduce(:+) / 2
end

nums = (1..100).to_a - [5]

p missing_no(nums)