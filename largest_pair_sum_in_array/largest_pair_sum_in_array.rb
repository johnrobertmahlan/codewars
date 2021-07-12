def largest_pair_sum(numbers)
    [numbers.sort[-2], numbers.sort.last].reduce(:+)
end