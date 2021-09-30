def missing_no(nums)
  duo = nums.sort.reverse.each_cons(2).reduce([]) do |d, pair|
    d << pair if pair.reduce(:-) != 1
    d
  end
  return 0 if duo.empty? && nums.include?(100)
  return 100 if duo.empty? && nums.include?(0)
  duo.flatten.reduce(:+) / 2
end