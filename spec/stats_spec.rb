require 'spec_helper'

RSpec.describe Statistics::Stats do
  subject(:subject) { described_class.new([2,6,9,3,5,1,8,3,6,9,2]) }

  it "return the amount of items less than 4" do
    expect(subject.less(2)).to eql(1)
  end

  it "return the amount of items greater than 8" do
    expect(subject.greater(8)).to eql(2)
  end

  it "return the amount of items between 1 and 5" do
    expect(subject.between(1, 5)).to eql(6)
  end
end
