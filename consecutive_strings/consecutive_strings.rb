#PSEUDO-CODE

# INPUTS: an array of strings, and an integer k
# OUTPUT: a string

# the outputted string should be the "first longest string consisting of k consecutive strings taken in the array"

# what does that mean?
# using k, we concatenate k numbers of strings from the array
# then, we return the longest resulting string

# STRATEGY
# use each_cons, passing in k
# then once we have a new array with the concatenated strings, use reduce

# NOTES
# return "" if the array is empty or k > array.length or k <= 0

def longest_consec(strarr, k)
    return "" if strarr.empty? || k > strarr.length || k <= 0
    new_arr = strarr.each_cons(k).reduce(['']) do |new_a, a|
        a.join("").length > new_a.last.length ? new_a << a.join("") : new_a
    end
    new_arr.last
end

arr = ["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"]

p longest_consec(arr, 2)