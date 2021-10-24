module Tiltify
  class UsersResource < Resource

    def me
      User.new get_request("user").body.dig("data")
    end

    def retrieve(user_id:)
      User.new get_request("users/#{user_id}").body.dig("data")
    end

    def campaigns(user_id:)
      response = get_request("users/#{user_id}/campaigns")
      Collection.from_response(response, type: Campaign)
    end

    def teams(user_id:)
      response = get_request("users/#{user_id}/teams")
      Collection.from_response(response, type: Team)
    end
    
  end
end
