#PSEUDO-CODE

# INPUTS: two strings
# OUTPUT: one string

# the output should concatenate these two strings in the following way:
# shorter+reverse(longer)+shorter

# NOTES:
# these strings may be empty
# if they are the same length, treat the first string as longer

def shorter_concat(str1, str2)
  if str1.length >= str2.length
    "#{str2}#{str1.reverse}#{str2}"
  else
    "#{str1}#{str2.reverse}#{str1}"
  end
end

p shorter_concat('first', 'abcde')