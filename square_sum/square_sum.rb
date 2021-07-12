def square_sum(numbers)
    numbers.reduce(0) do |sum, num|
      sum += num ** 2
    end
end