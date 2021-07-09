def even_last(numbers) 
    numbers.empty? ? 0 : numbers.each_with_index.select {|a, i| i.even?}.each {|r| r.pop}.flatten.reduce(:+) * numbers.last
end