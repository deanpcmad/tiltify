module Tiltify
  class Reward < Object

    def initialize(options = {})
      super options

      self.retired_at     = Time.at(options["retiredAt"].to_s[0..-4].to_i) if options["retiredAt"]
      self.activated_at   = Time.at(options["activatedAt"].to_s[0..-4].to_i) if options["activatedAt"]
      self.deactivated_at = Time.at(options["deactivatedAt"].to_s[0..-4].to_i) if options["deactivatedAt"]
      self.ends_at        = Time.at(options["endsAt"].to_s[0..-4].to_i) if options["endsAt"]
      self.created_at     = Time.at(options["createdAt"].to_s[0..-4].to_i) if options["createdAt"]
      self.updated_at     = Time.at(options["updatedAt"].to_s[0..-4].to_i) if options["updatedAt"]
    end

  end
end
