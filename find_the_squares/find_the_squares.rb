def find_squares(num)
    (0..1000000).each_cons(2).find {|a| (a.last ** 2) - (a.first ** 2) == num}.reverse.map {|n| n ** 2 }.join("-")
end