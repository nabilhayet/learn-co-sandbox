class Movies
  attr_accessor :name, :director, :genre, :rating, :cast
  @@all =[]

  def initialize(movie_hash)
    movie_hash.each do |key,value|
      self.send("#{key}=", "#{value}")
      @@all << self
    end
  end

  def self.all
    @@all 
  end

end
