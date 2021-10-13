def find_even_index(arr)
  idx = 0
  results = Array.new
  loop do
    left_side = arr[0...idx]
    right_side = arr[idx + 1..-1]
    left_sum = left_side.reduce(:+) || 0
    # p "This is the sum of #{left_side} at index #{idx}: #{left_sum}"
    right_sum = right_side.reduce(:+) || 0
    # p "This is the sum of #{right_side} at index #{idx}: #{right_sum}"
    idx += 1
    results = [left_sum, right_sum, idx]
    break if left_sum == right_sum || right_side.empty?
  end
  p results
  results[0] == results[1] ? idx - 1 : -1
end

p find_even_index([1,2,3,4,3,2,1])
# p find_even_index([1,100,50,-51,1,1])
# p find_even_index([20,10,-80,10,10,15,35])
p find_even_index([10,-80,10,10,15,35,20])
# p find_even_index(Array(1..100))