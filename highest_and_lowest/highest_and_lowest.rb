def high_and_low(numbers)
    sorted = numbers.split().map {|n| n.to_i }.sort
    "#{sorted.last} #{sorted.first}"
end