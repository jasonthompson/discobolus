require_relative '../../spec_helper'

describe Discobolus::DiscIDReader do

  let(:discid_output) {%Q{AF0BA20E 14 150 15182 37527 52910 66147 86485 98150
                       109400 124295 142815 158960 174542 192752 206172 2980\n}}
  subject{Discobolus::DiscIDReader.new(discid_output)}

  it "instantiates with string produced by discid tool" do
    subject.must_be_instance_of Discobolus::DiscIDReader
  end

  it "uses discid when instantiated without a string" do
    reader = Discobolus::DiscIDReader.new
    reader.must_be_instance_of Discobolus::DiscIDReader
  end

  describe "#offsets" do
    it "must return an array of song offsets" do
    subject.offsets.must_equal [15182, 37527, 52910, 66147, 86485,
                                98150, 109400, 124295, 142815, 158960,
                                174542, 192752, 206172]
    end
  end
end
