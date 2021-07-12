def close_compare(a, b, margin=0)
    return 0 if margin >= (a-b).abs
    a < b ? -1 : 1
end