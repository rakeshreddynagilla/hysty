class HomeController < ApplicationController
  def index
  	@videos = VideoSearch.videos
  	@india_videos = VideoSearch.india_videos
  end
end
