module Tiltify
  class FundraisingEventsResource < Resource

    def retrieve(fundraising_event_id:)
      FundraisingEvent.new get_request("fundraising-events/#{fundraising_event_id}").body.dig("data")
    end

  end
end
