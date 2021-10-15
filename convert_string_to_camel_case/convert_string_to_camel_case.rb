def to_camel_case(str)
  str.split(/[-_]/).each_with_index.map {|word, idx| idx == 0 ? word : word.capitalize }.join("")
end

p to_camel_case("the-stealth-warrior")
p to_camel_case("The_Stealth_Warrior")