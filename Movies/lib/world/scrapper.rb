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


    post.search("h6").take(20).each do |m_name|
    name << m_name.text.split(/[.,(]/)[1].strip
    year << m_name.text.split(/[(,)]/)[1].strip
  end

    post.search("p.Cast").take(20).each do |cast_|
    cast << cast_.text.split("Cast:")[1].strip
  end


    post.search("p.Directors").take(20).each do |direct|
    director << direct.text.split("Directors:")[1].strip
  end

    post.search("p.Producer").take(20).each do |produce|
    producer << produce.text.split("Producer:")[1].strip
  end

    post.search("p.Writer").take(20).each do |write|
    writer << write.text.split("Writer:")[1].strip
  end


  director.each_with_index do |item,index|
    direct= Director.new(item)
    produce = Producer.new(producer[index])
    write = Writer.new(writer[index])
    yr = year[index]
    cast_ = cast[index]
    m_name = name[index]
    m = Movies.find_by_name(m_name)

    if m
      m
    else
      movie=Movies.new(m,yr,cast_,direct,produce,write)
      binding.pry
  end
end

  # director.each do |a|
  #  direct= Director.new(a)
  #
  #   producer.each do |b|
  #     produce = Producer.new(b)
  #
  #       writer.each do |c|
  #        write = Writer.new(c)
  #
  #           year.each do |d|
  #             cast.each do |e|
  #               name.each do |f|
  #                 movie = Movies.find_by_name(f)
  #
  #                   if movie
  #                       movie
  #
  #                   else
  #                     movie = Movies.new(f,d,e,direct,produce,write)
  #
  #                   end
  #                 end
  #               end
  #             end
  #           end
  #         end
  #       end
binding.pry
end
end
