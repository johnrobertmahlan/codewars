def vowel_back(str)
  mapping = {
    "a" => "v",
    "b" => "k",
    "c" => "b",
    "d" => "a",
    "e" => "a",
    "f" => "f",
    "g" => "p",
    "h" => "q",
    "i" => "i",
    "j" => "s",
    "k" => "t",
    "l" => "u",
    "m" => "v",
    "n" => "w",
    "o" => "n",
    "p" => "y",
    "q" => "z",
    "r" => "a",
    "s" => "b",
    "t" => "t",
    "u" => "p",
    "v" => "v",
    "w" => "f",
    "x" => "g",
    "y" => "h",
    "z" => "i"
  }
str.split("").map {|c| mapping[c]}.join("")
end

p vowel_back('exampletesthere')