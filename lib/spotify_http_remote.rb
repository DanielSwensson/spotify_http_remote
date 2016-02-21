require "spotify_http_remote/version"
require "spotify_http_remote/application/server"

module SpotifyHttpRemote

	def self.start (port)
		puts "Starting SpotifyHttpRemote server"
		SpotifyHttpRemote::Server.run!
	end
  
end
