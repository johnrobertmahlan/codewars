def create_phone_number(numbers)
  area_code = numbers[0..2].join("")
  first_three = numbers[3..5].join("")
  last_four = numbers[6..-1].join("")
  "(#{area_code}) #{first_three}-#{last_four}"
end

p create_phone_number([1,2,3,4,5,6,7,8,9,0])