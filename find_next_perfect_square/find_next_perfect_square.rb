#PSEUDO-CODE

# INPUTS: one integer
# OUTPUT: one integer

# the goal is to find the NEXT PERFECT SQUARE
# a perfect square is an integer n such that the square root of n is *also* an integer
# for example, 121 is a perfect square, because it is an integer whose square root (11) is *also* an integer
# the function will take in an integer and either return -1 if that integer is not a perfect square OR return the next perfect square

# strategy: take the square root of the integer passed in and either return -1 if it's not an integer or add +1 if it is

def find_next_square(sq)
    # the below WORKS but TAKES TOO LONG
    # (1..sq).find {|i| i ** 2 == sq} ? ((1..sq).find {|i| i ** 2 == sq} + 1) ** 2 : -1
    Math.sqrt(sq).round == Math.sqrt(sq) ? (Math.sqrt(sq) + 1) ** 2 : -1
end

p find_next_square(121)