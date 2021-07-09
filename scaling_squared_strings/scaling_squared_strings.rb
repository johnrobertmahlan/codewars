def scale(strng, k, n)
    long_str = ''
    strng.split("\n").each do |sub_str|
      new_str = sub_str.each_char.reduce('') do |s, c|
        s += c * k
      end
      new_str += "\n"
      long_str += new_str * n
    end
    long_str.gsub(/\n$/, '')
 end