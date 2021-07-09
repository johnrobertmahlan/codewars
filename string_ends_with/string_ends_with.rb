def solution(str, ending)
    idx = str.length - ending.length
    str[idx..-1] == ending
end