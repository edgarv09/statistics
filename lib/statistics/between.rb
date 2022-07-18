module Statistics
  def between(x,y,collection: data)
    collection.count do |item|
      item >= x && item <= y
    end
  end
end
