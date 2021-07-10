def lovefunc( flower1, flower2 )
    return true if flower1 % 2 == 0 && flower2 %2 != 0
    return true if flower1 % 2 != 0 && flower2 %2 == 0
    false
end