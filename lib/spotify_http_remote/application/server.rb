require 'sinatra'
require 'spotify_osx_controller'

module SpotifyHttpRemote

	class Server < Sinatra::Base
		require 'sinatra'

		set port: 8080
		set :environment, :production

	  	get '/play' do
	  		SpotifyOsxController.play
	  	end
	
	  	get '/stop' do
	  		SpotifyOsxController.stop
	  	end
	
	  	get '/playpause' do
	  		SpotifyOsxController.play_pause
	  	end
	
	  	get '/next' do 
	  		SpotifyOsxController.next
	  	end
	
	  	get '/previous' do 
	  		SpotifyOsxController.previous
	  	end
	  	
	end

end
