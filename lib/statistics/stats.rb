module Statistics
  class Stats
    include Statistics
    attr_reader :data

    def initialize(data)
      @data = data
    end
  end
end
