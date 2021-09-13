def reverse_words(str)
    str.split(/(\s+)/).map {|w| w.reverse}.join("#{$1}")
end

puts reverse_words("This is an example!")
puts reverse_words("a b c d")
puts reverse_words("double  spaced  words")