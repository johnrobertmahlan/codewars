def find_short(s)
  s.split(" ").sort_by{|w| w.length}.first.length
end

p find_short("bitcoin take over the world maybe who knows perhaps")