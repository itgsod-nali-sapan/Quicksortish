def quicksort(list, x, y)
  if x < y
    q = partition(list, x, y)
    quicksort(list, x, q-1)
    quicksort(list, q+1, y)
  end
end
def partition(list, x, y)
  pivot = list[y]
  a = x-1
  x.upto(y-1) { |b|
      a = a + 1 if list[b] <= pivot
      list[a], list[b] = list[b], list[a] if list[b] <= pivot
  }
  list[a+1], list[y] = list[y], list[a+1]
  return a + 1
end


blondin = [1,2,36,1,2,5,77,12,44,684,34,8,23,890,12,7]
p blondin
quicksort(blondin, 0, blondin.length-1)
p blondin
