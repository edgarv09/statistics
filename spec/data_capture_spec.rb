require 'spec_helper'

RSpec.describe DataCapture do

  context 'DataCapture as the container of data' do
    subject(:subject) { described_class.new() }

    it "should be a instance of DataCapture" do
      expect(subject).to be_an_instance_of(described_class)
    end

    it 'add an number' do
      expect(subject).to receive(:add).with(1)
      subject.add(1)
    end

    it 'build_stats return a stats object' do
      expect(subject.build_stats).to be_an_instance_of(Statistics::Stats)
    end
    # expect(subject.instance_variable_get(@data)).to eq([1])
  end
end
