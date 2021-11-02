ALPHABET = ("a".."z").to_a

def find_missing_letter(arr)
  subalpha = ALPHABET.select {|letter| arr.include?(letter)}
  ((subalpha.first..subalpha.last).to_a - subalpha)[0]
end

p find_missing_letter(["a","b","c","d","f"])