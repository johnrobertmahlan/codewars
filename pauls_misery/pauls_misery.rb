LIFE_MAP = {
  'kata'            => 5,
  'Petes kata'      => 10,
  'life'            => 0,
  'eating'          => 1
}

FEELINGS_MAP = {
  "Super happy!"    => (0..39).to_a,
  "Happy!"          => (40..69).to_a,
  "Sad!"            => (70..99).to_a
}

def paul(x)
  score = x.reduce(0) do |total, activity|
    total += LIFE_MAP[activity]
    total
  end

  return FEELINGS_MAP.key(FEELINGS_MAP.values.find {|v| v.include?(score)}) if FEELINGS_MAP.values.any? {|v| v.include?(score)}
  "Miserable!"
end

p paul(['life', 'eating', 'life'])
p paul(['life', 'Petes kata', 'Petes kata', 'Petes kata', 'eating'])
p paul(['Petes kata', 'Petes kata', 'eating', 'Petes kata', 'Petes kata', 'eating'])

test_arr = Array.new(10, 'Petes kata')
p test_arr

p paul(test_arr)