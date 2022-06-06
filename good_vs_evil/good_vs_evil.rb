GOOD = {
    0 => 1,
    1 => 2,
    2 => 3,
    3 => 3,
    4 => 4,
    5 => 10
}

EVIL = {
    0 => 1,
    1 => 2,
    2 => 2,
    3 => 2,
    4 => 3,
    5 => 5,
    6 => 10
}

def determine_winner(good, evil)
  total_good = determine_total_good(good)
  total_evil = determine_total_evil(evil)

  return "tie" unless total_good != total_evil

  total_good > total_evil ? "good" : "evil"
end

def determine_total_good(good_str)
  total_good = good_str.split(" ").map(&:to_i).each_with_index.reduce(0) do |total, pair|
    num, idx = pair
    total += GOOD[idx] * num
    total
  end
  total_good
end

def determine_total_evil(evil_str)
  total_evil = evil_str.split(" ").map(&:to_i).each_with_index.reduce(0) do |total, pair|
    num, idx = pair
    total += EVIL[idx] * num
    total
  end
  total_evil
end

def battle_result(result)
  result_str = case result
                when "good" then "Good triumphs over Evil"
                when "evil" then "Evil eradicates all trace of Good"
                when "tie" then "No victor on this battle field"
               end

  puts "Battle Result: #{result_str}"
end

def fight(good, evil)
  winner = determine_winner(good, evil)

  battle_result(winner)
end

fight('1 0 0 0 0 0', '1 0 0 0 0 0 0')

fight('0 0 0 0 0 10', '0 1 1 1 1 0 0')

fight('0 0 0 0 0 10', '0 1 1 1 1 0 0')