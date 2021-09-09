OPERATIONS = ['addition', 'subtraction', 'multiplication', 'division']

def calc_type(num1, num2, result)
  mapping = {
    'addition': num1 + num2,
    'subtraction': num1 - num2,
    'multiplication': num1 * num2,
    'division': num1 / num2  
  }

  OPERATIONS.each do |o|
    total = mapping[o.to_sym]
    if total == result
      return "#{o}"
    end
  end
end

p calc_type(1,2,3)