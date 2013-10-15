module Discobolus
  class AlbumMetadata
    attr_reader :title, :artist, :image_url
    
    def initialize(args)
      @title = args[:title]
      @artist = args[:artist]
      @image_url = args[:image_url]
    end
    
  end
end
