def unique_in_order(iterable)
  arr = determine_type(iterable).each_cons(2).reject {|a| a.first == a.last}
  return handle_ones_and_twos(iterable) if arr.empty? && !determine_type(iterable).empty?
  new_arr = arr.flatten.each_with_index.reduce([]) do |a, pair|
    a << pair.first unless a.last == pair.first
    a
  end
  new_arr
end

def determine_type(iterable)
  iterable.is_a?(String) ? iterable.split("") : iterable
end

def handle_ones_and_twos(iterable)
  if determine_type(iterable).length == 1
    [iterable]
  else determine_type(iterable).length == 2
    iterable[0] == iterable[-1] ? [iterable[0]] : [iterable[0], iterable[-1]]
  end
end
    

p unique_in_order([1,2,2,3,3]) # okay
p unique_in_order('AAAABBBCCDAABBB') # should return ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order("A")
p unique_in_order("AA")