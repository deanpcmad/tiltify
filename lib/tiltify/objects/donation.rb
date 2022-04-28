module Tiltify
  class Donation < Object

    def initialize(options = {})
      super options

      self.completed_at = Time.at(options["completedAt"].to_s[0..-4].to_i)
    end

  end
end
