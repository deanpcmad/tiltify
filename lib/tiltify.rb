# frozen_string_literal: true

require "faraday"
require "faraday_middleware"

require_relative "tiltify/version"

module Tiltify

  autoload :Client, "tiltify/client"
  autoload :Collection, "tiltify/collection"
  autoload :Error, "tiltify/error"
  autoload :Resource, "tiltify/resource"
  autoload :Object, "tiltify/object"

  autoload :CampaignsResource, "tiltify/resources/campaigns"
  autoload :CausesResource, "tiltify/resources/causes"
  autoload :UsersResource, "tiltify/resources/users"

  autoload :Campaign, "tiltify/objects/campaign"
  autoload :Donation, "tiltify/objects/donation"
  autoload :Reward, "tiltify/objects/reward"
  autoload :Poll, "tiltify/objects/poll"
  autoload :Challenge, "tiltify/objects/challenge"
  autoload :Schedule, "tiltify/objects/schedule"
  autoload :Cause, "tiltify/objects/cause"
  autoload :User, "tiltify/objects/user"
  autoload :Team, "tiltify/objects/team"

end
