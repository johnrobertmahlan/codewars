#PSEUDO-CODE

# INPUT: string
# OUTPUT: string

# the goal is to essentially take each char in the string and replicate it n times (where n = its index in the string)
# the first replication of it should be capitalized

# STRATEGY
# split the string 
# then loop over resulting array with index and multiply the letters
# then use map to capitalize

def accum(s)
	new_arr = s.split("").each.with_index.map do |str, idx|
        str * (idx + 1)
    end
    new_arr.map {|str| str.capitalize}.join("-")
end

p accum('abcd')