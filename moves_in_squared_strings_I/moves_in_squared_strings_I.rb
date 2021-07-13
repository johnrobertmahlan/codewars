def vert_mirror(str)
    str.split("\n").map {|s| s.reverse}.join("\n")
end

def hor_mirror(str)
    str.split("\n").reverse.join("\n")
end

def oper(fct, s) 
    case fct.name
    when :vert_mirror
      vert_mirror(s)
    else
      hor_mirror(s)
    end
end