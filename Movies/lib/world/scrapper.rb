require 'open-uri'
require 'pry'

class Scrapper

def self.get_movie
  html = open("https://www.afi.com/afis-100-years-100-movies/")
  doc = Nokogiri::HTML(html)
  post= doc.css("div .movie_popup")
    name = []
    post.search("h6").select do |a|
    name << a.text
      end
      binding.pry
    end
end
