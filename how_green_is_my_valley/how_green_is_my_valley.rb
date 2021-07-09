def make_valley(arr)
    left_wing = arr.sort.reverse.select.with_index {|e, i| i.even?}
    arr.length.odd? ? right_wing = arr.sort.select.with_index {|e, i| i.odd?} : right_wing = arr.sort.select.with_index {|e, i| i.even?}
    left_wing + right_wing
end