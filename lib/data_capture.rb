require "statistics/stats"
class DataCapture
  attr_reader :stats

  def initialize
    @data = []
    @stats
  end

  def add(*args)
    data.push(*args)
  end

  def build_stats
    @stats = Statistics::Stats.new(data)
  end

  private

  def data
    @data
  end
end
