require 'open-uri'
require 'pry'

class Scrapper

def self.scrape_movie_page(movie_url)
  html = open(movie_url)
  doc = Nokogiri::HTML(html)
  movies=[]
  

end

def self.scrape_movie_detials(profile_url)

end

end
