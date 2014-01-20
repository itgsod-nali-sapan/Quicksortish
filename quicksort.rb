def quicksort(list, x, y)
  if x < y
    q = partition(list, x, y)
    quicksort(list, x, q-1)
    quicksort(list, q+1, y)
  end
end
def partition(list, x, y)
  pivot = list[y]
  i = x-1
  x.upto(y-1) { |j|
      i = i + 1 if list[j] <= pivot
      list[i], list[j] = list[j], list[i] if list[j] <= pivot
  }
  list[i+1], list[y] = list[y], list[i+1]
  return i + 1
end


blondin = [1,2,36,1,2,5,77,12,44,684,34,8,23,890,12,7]
p blondin
quicksort(blondin, 0, blondin.length-1)
p blondin
