require 'open-uri'
require 'pry'

class Scrapper

def self.get_movie
  html = open("https://www.hollywoodreporter.com/lists/100-best-films-ever-hollywood-favorites-818512/item/bonnie-clyde-hollywoods-100-favorite-818478")
  doc = Nokogiri::HTML(html)

  movies=[]
  
end

end
