def solution(a, b)
    a.length < b.length ? "#{a}#{b}#{a}" : "#{b}#{a}#{b}"
end

p solution("1", "22")
p solution("a", "bb")