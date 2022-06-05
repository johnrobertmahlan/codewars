def find_two_lowest(numbers)
  numbers.sort.slice(0,2)
end

def get_sum(numbers)
  find_two_lowest(numbers).reduce(:+)
end

p get_sum([10, 343445353, 3453445, 3453545353453])