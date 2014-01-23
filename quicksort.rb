# Quicksorts sorts an array from smallest to highest
# "left" is the base of a list and "right" is the length base of the array - 1
# Ex: quicksort([3,2,1], 0, [3,2,1].length-1) => [1,2,3]
def quicksort(list, left, right)
  # Checks if the left array item is bigger than the right array item
  if left < right
    # Sends the items for inspection and splitting them up in 2 arrays
    switch = partition(list, left, right)
    # Recursive function to make sure it does all the elements
    quicksort(list, left, switch-1)
    quicksort(list, switch+1, right)
  end
end

# Splits an array in 2 and returns the smallest
def partition(list, left, right)
  pivot = list[right]
  previous_left = left-1
  left.upto(right-1) { |value|
      previous_left = previous_left + 1 if list[value] <= pivot
      list[previous_left], list[value] = list[value], list[previous_left] if list[value] <= pivot
  }
  list[previous_left+1], list[right] = list[right], list[previous_left+1]
  return previous_left + 1
end

blondin = [3, 2 ,1]
p blondin
quicksort(blondin, 0, blondin.length-1)
p blondin

