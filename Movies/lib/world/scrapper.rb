require 'open-uri'
require 'pry'

class Scrapper

def self.get_movie
  html = open("https://www.afi.com/afis-100-years-100-movies/")
  doc = Nokogiri::HTML(html)
  post= doc.css("div .movie_popup")
    name = []
    year=[]
    cast =[]
    director =[]
    producer =[]
    writer=[]
    editor=[]
    cinemato=[]
    produc_co=[]

    post.search("h6").each do |m_name|
    name << m_name.text.split(/[.,(]/)[1].strip
    year << m_name.text.split(/[(,)]/)[1].strip
  end

    post.css("p.Cast").each do |cast_|
    cast << cast_.text.split("Cast:")[1].strip
  end


    post.css("p.Directors").each do |direct|
    director << direct.text.split("Directors:")[1].strip
  end

    post.css("p.Producer").each do |produce|
    producer << produce.text.split("Producer:")[1].strip
  end

    post.css("p.Writer").each do |write|
    writer << write.text.split("Writer:")[1].strip
    binding.pry
  end
  end
end
