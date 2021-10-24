# Tiltify

**This library is a work in progress**

Tiltify is a Ruby library for intereacting with the Tiltify v3 API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "tiltify"
```

## Usage

### Set Client Details

Firstly, you'll need a Tiltify account in order to create an API Access Token. [More Info](https://tiltify.github.io/api/topics/getting-started.html)

You can get your Access Token by going here (replacing YOURUSERNAME with your username) and creating an application.

```
https://dashboard.tiltify.com/YOURUSERNAME/my-account/connected-accounts/applications
```

If you're not planning on using OAuth, you can set the "Redirect URLs" as "https://example.com". Once created, copy your "Access Token" and save this.

```ruby
@client = Tiltify::Client.new(access_token: "")
```

The client then gives you access to each of the resources.

## Resources

The gem maps as closely as we can to the Tiltify API so you can easily convert API examples to gem code.

Responses are created as objects like `Tiltify::Campaign`. Having types like `Tiltify::Campaign` is handy for understanding what type of object you're working with. They're built using OpenStruct so you can easily access data in a Ruby-ish way.

### Campaigns

```ruby
# Retrieves a single campaign
@client.campaigns.retrieve(campaign_id: "id")

# Retrieves the most recent donations for a campaign in descending order
@client.campaigns.donations(campaign_id: "id")

# Retrieves all rewards for a campaign
@client.campaigns.rewards(campaign_id: "id")

# Retrieves the polls and their associated options for a campaign
@client.campaigns.polls(campaign_id: "id")

# Retrieves the challenges for a campaign
@client.campaigns.challenges(campaign_id: "id")

# Retrieves the schedule for a campaign
@client.campaigns.schedule(campaign_id: "id")
```

### Causes

```ruby
# Retrieves a single cause
@client.causes.retrieve(cause_id: "id")
```

### Users

```ruby
# Returns details for the currently authenticated user
@client.users.me

# Retrieves a specific user by their ID or slug
@client.users.retrieve(user_id: "id")

# Retrieves a list of a users campaigns
@client.users.campaigns(user_id: "id")

# Retrieves a list of a teams a user belongs to
@client.users.teams(user_id: "id")
```

### Teams

```ruby
# Retrieves a specific team by their ID or slug
@client.teams.retrieve(team_id: "id")

# Retrieves a list of a teams campaigns
@client.teams.campaigns(team_id: "id")
```
