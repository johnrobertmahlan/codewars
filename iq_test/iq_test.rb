def iq_test(numbers)
  outlier = numbers.split(" ").map {|num| num.to_i}.partition {|num| num.even?}.select {|arr| arr.length == 1}[0][0]
  numbers.split(" ").index(outlier.to_s) + 1
end

p iq_test("2 4 7 8 10")