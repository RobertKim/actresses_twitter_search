desc "Fetch actresses"
task :fetch_actresses_third => :environment do

require 'nokogiri'
require 'open-uri'
require 'twitter'

  url = "http://en.wikipedia.org/wiki/List_of_American_film_actresses"
  doc = Nokogiri::HTML(open(url))
  actress = doc.css(".columns a").each_slice(160).to_a[2]
  
  actress.each do |actress|
  	star = Actress.find_or_create_by(:actress => actress.text)
  	DetectTwitterUser.new(star).save_url_if_verified
  end

end