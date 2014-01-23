class Array
  # Sorts an array from smallest to highest
  # Ex: [3,2,1].bubble_sort => [1,2,3]
  def bubble_sort
    # Exists if the array only has one element
    return self if self.size <= 1
    swapped = true
    # Iterates through a list and swaps places between two elements next to each other if the 1st < 2nd
    # Stops when it has gone through a list without swapping
    until swapped == false
      swapped = false
      0.upto(self.size-2) do |i|
        if self[i] > self[i+1]
          self[i], self[i+1] = self[i+1], self[i] # swap values
          swapped = true
        end
      end
    end
  end
end

list = [2, 1, 5, 4, 3]
p list
list.bubble_sort
p list