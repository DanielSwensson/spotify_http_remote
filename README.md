# SpotifyHttpRemote

HTTP API for OSX only that allows remote controlling Spotify by sending requests to the computer that this client is running on.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spotify_http_remote'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spotify_http_remote

## Usage

Start server:

    $ spotify_http_remote
    
### HTTP routes

Play: `<your-domain>:8080/play` - Start playback

Stop: `<your-domain>:8080/play` - Stop playback  

Next: `<your-domain>:8080/next` - Next track

Previous: `<your-domain>:8080/previous` - Previous track

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spotify_http_remote.

