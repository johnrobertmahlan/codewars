def solve(nums, div)
  nums.map {|num| num + (num % div)}
end

p solve([2, 7, 5, 9, 100, 34, 32, 0], 3)