def heap_sort(collection)
  n = collection.length
  (n/2 - 1).downto(0) do |i|
    heapify(collection, n, i)
  end

  (n-1).downto(1) do |i|
    temp = collection[0]
    collection[0] = collection[i]
    collection[i] = temp 
    heapify(collection, i, 0)
  end
  collection
end

def heapify(collection, n, i)
  max = i
  left = 2 * i + 1
  right = 2 * i + 2

  if left < n && collection[max] < collection[left]
    max = left
  end

  if right < n && collection[max] < collection[right]
    max = right
  end

  if max != i
    temp = collection[max]
    collection[max] = collection[i]
    collection[i] = temp
    heapify(collection, n, max)
  end
end
