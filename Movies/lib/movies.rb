class Movies
  attr_accessor :name, :director, :genre, :rating
  @@all =[]

  def initialize(movie_hash)
    movie_hash.each do |key,value|
      self.send("#{key}=", "#{value}")
      @@all << self
    end
  end

end
