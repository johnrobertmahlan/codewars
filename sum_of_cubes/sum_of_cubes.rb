def sum_cubes(n)
    (1..n).map {|i| i ** 3}.reduce(:+)
end

p sum_cubes(2)
p sum_cubes(4)