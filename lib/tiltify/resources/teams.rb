module Tiltify
  class TeamsResource < Resource

    def retrieve(team_id:)
      Team.new get_request("teams/#{team_id}").body.dig("data")
    end

    def campaigns(team_id:)
      response = get_request("teams/#{team_id}/campaigns")
      Collection.from_response(response, type: Campaign)
    end
    
  end
end
