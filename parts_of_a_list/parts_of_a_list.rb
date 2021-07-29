def partlist(arr)
  counter = 1
  new_arr = Array.new 
  really_new_arr = Array.new
  loop do
    new_arr << arr.first(counter).join(" ")
    new_arr << arr[counter..-1].join(" ")
    really_new_arr << new_arr
    counter += 1
    new_arr = []
    break if counter == arr.length
  end
  really_new_arr
end

arr = ["az", "toto", "picaro", "zone", "kiwi"]

partlist(arr)