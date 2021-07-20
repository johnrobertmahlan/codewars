#PSEUDO-CODE

# INPUT: array
# OUTPUT: boolean

# the input array will include a series of directions
# each direction corresponds to one minute of walking and we need to walk for ten minutes
# we also need to return to our starting point
# that means for each minute spent walking west, we must spend one minute walking east
# likewise, for each minute spent walking north, we must spend one minute walking south
# and so on for walking east and south

# STRATEGY
# we can sort the array and partition into 4 sub-arrays
# these 4 sub-arrays form 2 "mirrors": the north/south mirror and the east/west mirror
# the mirrors must be equal in length (i.e., there must be as many norths as souths and as many easts as wests)
# if they're not equal in length, we have not returned to our starting point

def is_valid_walk(walk)
    east = walk.sort.select {|d| d == 'e'}
    north = walk.sort.select {|d| d == 'n'}
    south = walk.sort.select {|d| d == 's'}
    west = walk.sort.select {|d| d == 'w'}
    north.length == south.length && east.length == west.length && (north + south + east + west).length == 10
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) # true => matching n/s pairs
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) # false => matching w/e pairs but too long
p is_valid_walk(['w']) # false => too short
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) # false => 6 norths but only 4 souths