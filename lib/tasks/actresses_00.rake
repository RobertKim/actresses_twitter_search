desc "Fetch actresses"
task :fetch_actresses => :environment do

require 'nokogiri'
require 'open-uri'
require 'twitter'

  url = "http://en.wikipedia.org/wiki/List_of_American_film_actresses"
  doc = Nokogiri::HTML(open(url))
  actress = doc.css(".columns a").each do |actress|
  	star = Actress.create(:actress => actress.text)
  	# DetectTwitterUser.new(star).save_url_if_verified
  	# Model.last(n).each(&:destroy)
  end

end