def digitize(n)
    n.to_s.split("").reverse.map { |num| num.to_i }
end