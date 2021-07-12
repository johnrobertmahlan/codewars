def fizzbuzz(n)
  (1..n).reduce([]) do |a, i|
    if i % 3 == 0
      a << "Fizz"
    elsif i % 5 == 0
      a << "Buzz"
    elsif i % 3 == 0 && i % 5 == 0
      a << "FizzBuzz"
    else
      a << i
    end
  end    
end