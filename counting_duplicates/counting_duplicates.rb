def duplicate_count(text)
  arr = text.downcase.split("")
  arr.reject {|t| arr.count(t) <= 1}.uniq.count
end

p duplicate_count("abcde")
p duplicate_count("Indivisibilities")