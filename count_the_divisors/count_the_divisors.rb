def count_the_divisors(n)
    (1..n).select {|i| n % i == 0}.count
end

p count_the_divisors(11)