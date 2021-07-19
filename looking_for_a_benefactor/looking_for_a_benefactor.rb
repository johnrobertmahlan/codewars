#PSEUDO-CODE

# INPUTS: a) an ARRAY of donations; b) an INTEGER
# the array tells us the first n donations made
# the integer tells us the AVERAGE of the first n+ 1 donations

# OUTPUT: an INTEGER of what the n+1 donation must be to meet the average specified in the input

# NOTES: raise an ERROR if output is <= 0; all donations are numbers (integers OR floats); the donation array can be empty

# STRATEGY:
# to calculate an average of n numbers, you ADD n numbers and divide by n
# ex: the average of [3,5,8] = (3 + 5 + 8) / 3
# so if I HAVE the average and want the LAST number, I can do some algebra
# AVG = 10
# NUMS = [5,5,10,15]
# I have: 10 = (5 + 5 + 10 + 15 + n) / NUMS + 1
# Then: 10 = (35 + n) / 5
# So: 50 = 35 + n
# So: n = 15
# If I'm not given n, I'd have 50 = 35
# 10 = (5 + 5 + 10 + 15) / 5
# 10 = 35 / 5
# I want to FIND any number SUCH THAT adding it to 35 and dividing by 5 will equal 10

def new_avg(arr, newavg)
    sum =  arr.map{|i| i.to_f}.reduce(:+) || 0
    len = arr.length + 1
    num = ((newavg * len) - sum).ceil
    raise ArgumentError if num <= 0
    num.to_i
end

p new_avg([14, 30, 5, 7, 9, 11, 15], 2)