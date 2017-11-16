def linear_search(collection, target)
  n = collection.length
  p "n: #{n}"

  collection.each_with_index do |value, i|
    if value == target
      return i
    end
  end
  return nil
end
