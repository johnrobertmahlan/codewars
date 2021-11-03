ALPHABETUP = ("A".."Z").to_a
ALPHABETDOWN = ("a".."z").to_a

def find_missing_letter(arr)
  subalpha = determine_alphabet(arr[0]).select {|letter| arr.include?(letter)}
  diff = (subalpha.first..subalpha.last).to_a
  (diff - subalpha)[0]
end

def determine_alphabet(letter)
  ALPHABETUP.include?(letter) ? ALPHABETUP : ALPHABETDOWN
end