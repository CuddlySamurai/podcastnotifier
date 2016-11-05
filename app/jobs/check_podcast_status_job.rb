class CheckPodcastStatusJob < ApplicationJob
	queue_as :default

	def perform(podcast)
		uri = URI(podcast.rss)
		response = nil
		Net::HTTP.start(uri.host, uri.port) {|http|
			response = http.head(uri.path)
		}
		last_modified = response["last-modified"]
		modified = Date.parse(last_modified.to_s)
		podcastLastModified = podcast.last_modified.nil? ? Date.today() : Date.parse(podcast.last_modified.to_s)
		if (podcastLastModified != modified) then
			 $arduinoSocket.print(podcast.color + '\n')	
			 podcast.last_modified = last_modified;
			 podcast.save
		end
		CheckPodcastStatusJob.set(wait: 60.seconds).perform_later(podcast)
	end
end
