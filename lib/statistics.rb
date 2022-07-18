require "statistics/less"
require "statistics/greater"
require "statistics/between"

module Statistics
  class Error < StandardError; end
  class BetweenError < StandardError
    def initialize(x, y)
      super("There are not records to be deleted")
    end
  end
  # Your code goes here...
end
