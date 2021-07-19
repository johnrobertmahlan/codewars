#PSEUDO-CODE

# INPUTS: two arrays
# OUTPUT: one array

# the idea is to take the initial two arrays and REMOVE things from the first
# specifically, remove anything that is ALSO present in the SECOND array
# then return what is left

# NOTES: if a value appears in the second array MULTIPLE TIMES, then ALL instances must be removed from the first array

# STRATEGY
# the obvious thing here is to loop over the second array and call .delete on the first array for each element
# alternatively, do arr1.reject {|i| arr2.include?(i)}

# QUESTIONS:
# what to return if either array is empty?

def array_diff(a, b)
  a.reject {|i| b.include?(i)}
end

p array_diff([], [1])