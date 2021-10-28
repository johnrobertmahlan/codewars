VOWELS = ["a", "e", "i", "o", "u"]

def get_count(input_str)
  input_str.chars.select{ |c| VOWELS.include?(c) }.count
end

p get_count("abracadabra")
p get_count("o a kak ushakov lil vo kashu kakao")