module Tiltify
  class CausesResource < Resource

    def retrieve(cause_id:)
      Cause.new get_request("causes/#{cause_id}").body.dig("data")
    end
    
  end
end
