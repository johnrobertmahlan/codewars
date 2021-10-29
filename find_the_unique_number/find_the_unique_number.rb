def find_uniq(arr)
  sort_arr = arr.sort
  first = sort_arr.count(sort_arr[0])
  last = sort_arr.count(sort_arr[-1])
  first == 1 ? sort_arr[0] : sort_arr[-1]
end

# p find_uniq([1,1,1,1,0])
p find_uniq([1, 1, 1, 2, 1, 1 ])