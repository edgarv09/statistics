require "statistics"
class DataCapture
  attr_reader :stats

  def initialize
    @data = []
    @stats = Statistics::Stats.new(data)
  end

  def add(*args)
    array.push(*args)
  end

  private

  def data
    @data
  end

  def method_missing(method, *args)
    return data.send(method, *args) if data.respond_to?(method)
    super
  end
end
