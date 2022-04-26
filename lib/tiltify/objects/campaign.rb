module Tiltify
  class Campaign < Object

    def initialize(options = {})
      super options

      self.starts_at = Time.at(options["startsAt"].to_s[0..-4].to_i) if options["startsAt"]
      self.ends_at   = Time.at(options["endsAt"].to_s[0..-4].to_i) if options["endsAt"]
    end

  end
end
