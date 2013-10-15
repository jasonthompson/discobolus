require_relative '../../spec_helper.rb'

describe Discobolus::AlbumMetadata do
  it 'instantiates with a parameters hash' do
    album = Discobolus::AlbumMetadata.new(title: "O Brother, Where art Thou?",
                                  artist: "Various Artists",
                                  image_url: "http://long-obscure-url" )
    album.title.must_equal "O Brother, Where art Thou?"
  end
end
