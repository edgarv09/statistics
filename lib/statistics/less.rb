module Statistics
  def less(obj, collection: data)
    collection.count do |item|
      item < obj
    end
  end
end
