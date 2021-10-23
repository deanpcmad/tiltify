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

  autoload :Campaign, "tiltify/objects/campaign"
  autoload :Donation, "tiltify/objects/donation"
  autoload :Reward, "tiltify/objects/reward"
  autoload :Poll, "tiltify/objects/poll"
  autoload :Challenge, "tiltify/objects/challenge"
  autoload :Schedule, "tiltify/objects/schedule"

end