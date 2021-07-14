def in_array(array1, array2)
    array3 = array1.sort.reduce([]) do |arr, str|
      arr.push(str) if array2.any? {|s| s.include?(str)}
      arr
    end
    array3 || []
end