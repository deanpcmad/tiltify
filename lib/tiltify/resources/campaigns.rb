module Tiltify
  class CampaignsResource < Resource

    def retrieve(campaign_id:)
      Campaign.new get_request("campaigns/#{campaign_id}").body.dig("data")
    end

    def donations(campaign_id:, **params)
      response = get_request("campaigns/#{campaign_id}/donations", params)
      Collection.from_response(response, type: Donation)
    end

    def rewards(campaign_id:, **params)
      response = get_request("campaigns/#{campaign_id}/rewards", params)
      Collection.from_response(response, type: Reward)
    end
    
  end
end
