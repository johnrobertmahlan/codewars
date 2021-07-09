def pofi(n)
    map = {
      0 => "1",
      1 => "i",
      2 => "-1",
      3 => "-i"
    }
    return map[n] if n <= 3
    n -= 4 until map.has_key?(n)
    map[n]
end