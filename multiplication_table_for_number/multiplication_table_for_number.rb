def multiTable(number)
    table = 1
    str = "#{table} * #{number} = #{table * number}"
    loop do
      table += 1
      str = str + "\n#{table} * #{number} = #{table * number}"
      break if table == 10
    end
    str
end