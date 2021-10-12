def order(words)
  idx = 0
  hsh = words.split(" ").reduce({}) do |h, word|
    match = word.match(/(?<idx>[^a-zA-Z])/)
    idx = match[:idx].to_i
    h[idx] = word
    h
  end
  hsh.sort.map {|a| a.last}.join(" ")
end

p order("is2 Thi1s T4est 3a")
p order("4of Fo1r pe6ople g3ood th5e the2")