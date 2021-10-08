def comp(array1, array2)
  return false if array1 == nil || array2 == nil
  array1.sort.map{|i| i ** 2} == array2.sort
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [132, 14641, 20736, 361, 25921, 361, 20736, 361])