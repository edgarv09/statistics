module Statistics
  def greater(obj, collection: data)
    collection.count do |item|
      item > obj
    end
  end
end
