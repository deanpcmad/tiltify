module Tiltify
  class Challenge < Object

    def initialize(options = {})
      super options

      self.ends_at    = Time.at(options["endsAt"].to_s[0..-4].to_i) if options["endsAt"]
      self.created_at = Time.at(options["createdAt"].to_s[0..-4].to_i) if options["createdAt"]
      self.updated_at = Time.at(options["updatedAt"].to_s[0..-4].to_i) if options["updatedAt"]
    end

  end
end
