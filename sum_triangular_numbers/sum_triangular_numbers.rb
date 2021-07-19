#PSEUDO-CODE

# INPUTS: one integer
# OUTPUT: one integer

# the integer given tells you HOW MANY TRIANGULAR NUMBERS TO ADD
# you need to RETURN the SUM of those triangular numbers

# NOTES
# a triangular number is the SUM of preceding natural numbers
# ex: 3 is a triangular number because it is the sum of 1 and 2
# but 4 is *not* a triangular number, because it is not the sum of the preceding natural numbers
# 6, however, *is* a triangular number because it IS the sum of preceding natural numbers (1, 2, 3)
# so, the series is 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, etc

# thus, if we are given 4 as our integer, we want to ADD the first four triangular numbers
# thus, we want to add 1 + 3 + 6 + 10
# therefore, we return 20

# NB: if given a negative number, return 0

# Strategy:
# what if i use each_cons but pass in a counter that increments up?
# on each increment, I get a slightly larger array, and I can call .reduce on it
# ex: counter = 1
# (1..counter).each_cons(counter).reduce(:+)
# counter += 1
# (1..counter).each_cons(counter).reduce(:+)
# and so on, looping however many times I need

def sum_triangulars(n)
    return 0 if n.negative?
    counter = 1
    triangulars = Array.new
    loop do
        (1..counter).each_cons(counter) do |a|
            triangulars << a.reduce(:+)
        end
        counter += 1
        triangulars
        break if counter > n
    end
    triangulars.reduce(:+)
end

sum_triangulars(4) # should return 20