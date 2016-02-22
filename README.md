# SpotifyHttpRemote

HTTP API for sending basic playback commands to a spotify client running on OSX.

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

    $ spotify_http_remote <port> - Default port is 8080

In development mode 'localhost' is the default hostname.

Switch to production mode and start sending commands from other devices on the network by setting `RACK_ENV` variable to 'production':

    $ export RACK_ENV=production
    
To allow devices from outside your network to send requests to the client, the router needs to be configured to forwarding traffic to the chosen port of the network to client's local IP.
    
### HTTP routes

Start playback: `<your-domain>:<port>/play`

Start playing The Beatles: `<your-domain>:<port>/play?artist=beatles`

Start playing Drive My Car by The Beatles: `<your-domain>:<port>/play?artist=beatles&track=drive%20my%20car`

Start playing the album Help: `<your-domain>:<port>/play?album=Help!` 

Stop playback: `<your-domain>:<port>/stop`  

Next track: `<your-domain>:8080/next`

Previous track: `<your-domain>:8080/previous`



