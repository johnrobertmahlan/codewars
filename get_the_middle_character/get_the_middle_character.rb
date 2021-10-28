def get_middle(s)
  len = s.split("").count
  if len.even?
    arr = s.split("")
    arr[(len / 2) - 1..len / 2].join("")
  else
    arr = s.split("")
    arr[len / 2]
  end
end

p get_middle("A")
p get_middle("testing")
p get_middle("middle")