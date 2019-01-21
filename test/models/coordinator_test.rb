require "test_helper"

describe Coordinator do
  let(:coordinator) { Coordinator.new }

  it "must be valid" do
    value(coordinator).must_be :valid?
  end
end
