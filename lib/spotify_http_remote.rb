require "spotify_http_remote/version"
require "spotify_http_remote/application/server"

module SpotifyHttpRemote

	def self.start (port = 8080)
		puts "Starting SpotifyHttpRemote server"
		SpotifyHttpRemote::Server.run! port: port
	end
  
end
