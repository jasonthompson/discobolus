module Discobolus
  class DiscIDReader
    attr_reader :offsets

    def initialize(discid_output=nil)
      discid_output = discid_output || `discid`
      @offsets = get_offsets(discid_output)
    end

    private

    def get_offsets(discid_output_string)
      offset_list = discid_output_string.rstrip.split[3..-2]
      offset_list.map {|o| o.to_i}
    end
  end
end
