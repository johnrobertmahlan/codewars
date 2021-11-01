def delete_nth(order,max_e)
  order.each_with_index do |e, idx|
    next unless order.count(e) >= max_e
    order[idx] = nil if order[0...idx].count(e) >= max_e
    order
  end
  order.compact
end

p delete_nth([1,1,1,1], 2)
p delete_nth([20,37,20,21], 1)