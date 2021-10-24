module Tiltify
  class Client
    BASE_URL = "https://tiltify.com/api/v3"

    attr_reader :access_token, :adapter

    def initialize(access_token:, adapter: Faraday.default_adapter, stubs: nil)
      @access_token = access_token
      @adapter = adapter

      # Test stubs for requests
      @stubs = stubs
    end

    def campaigns
      CampaignsResource.new(self)
    end

    def causes
      CausesResource.new(self)
    end

    def users
      UsersResource.new(self)
    end

    def connection
      @connection ||= Faraday.new(BASE_URL) do |conn|
        conn.request :authorization, :Bearer, access_token
        conn.request :json

        conn.response :dates
        conn.response :json, content_type: "application/json"

        conn.adapter adapter, @stubs
      end
    end
  end
end
