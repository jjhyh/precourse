# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

orig_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odd_array = orig_array.select { |num| num.odd? }