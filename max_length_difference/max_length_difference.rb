def mxdiflg(a1, a2)
  a1 = a1.sort_by {|e| e.length}
  a2 = a2.sort_by {|e| e.length}
  (a1.last.length - a2.first.length) > (a2.last.length - a1.first.length) ? (a1.last.length - a2.first.length) : (a2.last.length - a1.first.length)
end

a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]

p mxdiflg(a1, a2) # should return 13