require 'discobolus/version'
require 'discobolus/disc_id_reader.rb'
require 'discobolus/album_metadata'

require 'net/http'
require 'nokogiri'

module Discobolus
  class GraceNoteRequest
    attr_reader :client_id, :user_id, :client_id_string, :uri

    def initialize
      @client_id = ENV['GRACENOTE_CLIENT_ID']
      @user_id = ENV['GRACENOTE_USER_ID']
      @client_id_string, _ = @client_id.split('-')
      @uri = URI("https://c#{@client_id_string}.web.cddbp.net/webapi/xml/")
      @request_xml = build_request_xml 
    end

    def auth_xml
      Nokogiri::XML::Builder.with(@request_xml) do |request_xml|
        request_xml.auth {
          request_xml.client client_id
          request_xml.user user_id
        }
      end
    end

    def build_request_xml

    end
  end
end
