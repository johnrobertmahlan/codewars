#PSEUDO-CODE

# INPUT: string
# OUTPUT: string

# GOAL: replace every LETTER in the input string with its corresponding position in the alphabet
# that position will be an INTEGER, and the output will be a string of integers

# NOTES: anything that isn't a letter should be SKIPPED
# the letter 'a' is 1, 'z' is 26

# STRATEGY
# build a conversion hash, loop over every char and convert?
# split string and map using conversion hash

def alphabet_position(text)
    num_arr = text.chars.map do |char|
      ("a".."z").include?(char.downcase) ? converter(char) : ""
    end
    num_arr.join("").strip
end

def converter(char)
    counter = 0
    conversion_hash = ("a".."z").reduce({}) do |h, c|
      counter += 1
      h[c] = "#{counter} "
      h
    end
    conversion_hash[char.downcase]
end

# p converter("b")

p alphabet_position("The sunset sets at twelve o' clock.")
p alphabet_position("-.-")