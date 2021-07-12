def get_real_floor(n)
    return n if n <= 0
    n < 13 ? n - 1 : n - 2
end