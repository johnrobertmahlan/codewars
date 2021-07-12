def first_non_consecutive(arr)
    diff = Array.new
    arr.each_with_index do |num, idx|
      arr[idx + 1] ? next_num = arr[idx + 1] : next_num = arr[idx]
      (next_num - num).abs == 1 ? diff = diff : diff << next_num
    end
    diff.length > 1 ? diff.first : nil
end