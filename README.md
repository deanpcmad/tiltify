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