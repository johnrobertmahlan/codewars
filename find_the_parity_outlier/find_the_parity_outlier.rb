def find_outlier(integers)
  integers.partition {|num| num % 2 != 0}.select {|arr| arr.length == 1}[0][0]
end

p find_outlier([0, 1, 2])
p find_outlier([1, 2, 3])
p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])
p find_outlier([160, 3, 1719, 19, 11, 13, -21])