def no_odds( values )
    values.select {|n| n == 0 || n % 2 == 0}
end