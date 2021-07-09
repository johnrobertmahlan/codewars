def convert(char)
    case char
      when 'A' then 'T'
      when 'T' then 'A'
      when 'G' then 'C'
      when 'C' then 'G'
    end
end
  
def DNA_strand(dna)
    dna.split("").map {|char| convert(char) }.join("")
end