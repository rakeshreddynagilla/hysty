class VideoSearch
	require 'youtube_it'

	def self.videos
		developer_key = ENV['DEV_KEY']
		client = YouTubeIt::Client.new(:dev_key => developer_key)
		client.videos_by(:most_viewed, :time => :today, :page => 1, :per_page => 20).videos
	end

	def self.india_videos
		developer_key = ENV['DEV_KEY']
		client = YouTubeIt::Client.new(:dev_key => developer_key)
		client.videos_by(:most_viewed,  :region => "IN").videos
	end
end