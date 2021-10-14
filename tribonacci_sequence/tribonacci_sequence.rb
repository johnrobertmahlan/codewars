def tribonacci(signature,n)
  return [] if n == 0
  sequence = Array.new
  sequence = sequence + signature
  n = n - 3
  n.times do
    p "This is the #{n}th time around"
    new_num = signature.reduce(:+)
    p new_num
    p "This is signature before updating sequence: #{signature}"
    sequence << new_num
    p "This is signature before doing anything: #{signature}"
    p "This is sequence: #{sequence}"
    signature << new_num
    p "This is signature after adding new_num: #{signature}"
    signature.shift
    p "This is signature after removing first el: #{signature}"
    signature
  end
  sequence
end

p tribonacci([1,1,1], 10)
p tribonacci([1,2,3], 10)