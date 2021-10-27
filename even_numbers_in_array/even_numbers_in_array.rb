def even_numbers(arr,n)
  evens = arr.select { |a| a.even? }
  evens.drop(evens.length - n)
end

p even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)