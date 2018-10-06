# frozen_string_literal: true

# sudo apt install youtube-dl ffmpeg -y
# gem install spotify-client
# gem install task_progress_bar
# SPOTIFY_API - TOKEN - https://developer.spotify.com/console/get-playlist-tracks/?playlist_id=37i9dQZEVXbMXbN3EUUhlg
# GOOGLE_API  - TOKEN - https://console.developers.google.com/apis/library/youtube.googleapis.com

require 'uri'
require 'net/http'
require 'spotify-client'
require 'task_progress_bar'
require_relative 'src/spotify_downloader'

config = {
  download_path: '~/Music/',
  spotify_token: 'SPOTIFY-TOKEN',
  google_token:  'YOUTUBE-TOKEN'
}

client = SpotifyDownloader.new(config)

if v1 = ARGV[0]
  client.download!(ARGV[0])
else
  p "Run this program as follows:"
  p "ruby spotify.rb SOTIFY-PLAYLIST-ID"
end
