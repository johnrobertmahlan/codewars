def spin_words(string)
  string.split(" ").map {|word| word.length >= 5 ? word.reverse : word}.join(" ")
end

p spin_words("Hey fellow warriors")