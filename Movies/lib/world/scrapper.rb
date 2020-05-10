require 'open-uri'
require 'pry'

class Scrapper

def self.get_movie
  html = open("https://www.afi.com/afis-100-years-100-movies/")
  doc = Nokogiri::HTML(html)
  post= doc.css("div .movie_popup")
    name = []
    cast =[]
    director =[]
    producer =[]
    writer=[]
    editor=[]
    cinemato=[]
    produc_co=[]

    post.search("h6").each do |m_name|
    name << m_name.text.split("(")[0].strip
  end

    post.css("p.Cast").each do |b|
    cast << b.text.chomp("Cast:").strip
  end


    post.css("p.Directors").each do |c|
    director << c.text.chomp("Cast:").strip
  end
  binding.pry
    post.css("p.Producer").each do |d|
    producer << d.text.chomp("Cast:").strip
  end

    post.css("p.Writer").each do |e|
    writer << e.text.chomp("Cast:").strip
  end



    end
end
