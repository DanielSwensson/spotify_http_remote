require 'sinatra'
require 'spotify_osx_controller'

module SpotifyHttpRemote

	class Server < Sinatra::Base
		
	  	get '/play' do
	  		params.keys.each do |key|
  				params[(key.to_sym rescue key) || key] = params.delete(key)
			end	  		
	  		SpotifyOsxController.play params
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
