def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/, "")
end

p disemvowel("This website is for losers LOL!")