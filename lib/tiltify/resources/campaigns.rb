module Tiltify
  class CampaignsResource < Resource

    def retrieve(campaign_id:)
      Campaign.new get_request("campaigns/#{campaign_id}").body.dig("data")
    end

    def donations(campaign_id:, **params)
      response = get_request("campaigns/#{campaign_id}/donations", params: params)
      Collection.from_response(response, type: Donation)
    end

    def rewards(campaign_id:)
      response = get_request("campaigns/#{campaign_id}/rewards")
      Collection.from_response(response, type: Reward)
    end

    def polls(campaign_id:)
      response = get_request("campaigns/#{campaign_id}/polls")
      Collection.from_response(response, type: Poll)
    end

    def challenges(campaign_id:)
      response = get_request("campaigns/#{campaign_id}/challenges")
      Collection.from_response(response, type: Challenge)
    end

    def schedule(campaign_id:)
      response = get_request("campaigns/#{campaign_id}/schedule")
      Collection.from_response(response, type: Schedule)
    end
    
  end
end
