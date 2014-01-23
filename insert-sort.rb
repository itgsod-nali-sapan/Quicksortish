# insert_sort Sorts an array of fixnums
#Ex: insert_sort(3,1,2) => [1,2,3]
def insert_sort(input_list)

  # Loops the array based on the amount of elements
  for index in 1...input_list.length

    # Variables for comparison
    value = input_list[index]
    pivot = index-1

    # Makes sure that pivot is greater than nil
    # Checks if pivots position in the input_list is greater than the next element
    while pivot >= 0 && input_list[pivot] > value
      # Switches place with the next element
      input_list[pivot+1] = input_list[pivot]
      pivot = pivot-1
    end

    # Puts back smaller elements
    input_list[pivot+1] = value

  end

  # Returns the sorted list
  return input_list

end

list = 10000.times.map { |x| rand(10000) }# [20 , 5, 2, 9, 7, 8, 4,2 , 321, 9001]
p insert_sort(list)