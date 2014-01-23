class Array
  # insert_sort Sorts an array of fixnums
  #Ex: insert_sort(3,1,2) => [1,2,3]
  def insert_sort

    # Loops the array based on the amount of elements
    for index in 1...self.length

      # Variables for comparison
      value = self[index]
      pivot = index-1

      # Makes sure that pivot is greater than nil
      # Checks if pivots position in the input_list is greater than the next element
      while pivot >= 0 && self[pivot] > value
        # Switches place with the next element
        self[pivot+1] = self[pivot]
        pivot = pivot-1
      end

      # Puts back smaller elements
      self[pivot+1] = value

    end

    # Returns the sorted list
    return self

  end
end

list = 10000.times.map { |x| rand(100) }# [20 , 5, 2, 9, 7, 8, 4,2 , 321, 9001]
p list.insert_sort