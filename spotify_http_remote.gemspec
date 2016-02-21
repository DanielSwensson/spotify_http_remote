# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spotify_http_remote/version'

Gem::Specification.new do |spec|
  spec.name          = "spotify_http_remote"
  spec.version       = SpotifyHttpRemote::VERSION
  spec.authors       = ["Daniel Swensson"]
  spec.email         = ["daniel@danielswensson.se"]

  spec.summary       = %q{HTTP API for controlling Spotify OSX client}
  spec.homepage      = "https://github.com/DanielSwensson/spotify_http_remote"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
