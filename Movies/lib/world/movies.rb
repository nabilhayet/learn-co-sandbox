class Movies
  attr_accessor :name, :year,:cast,:director, :producer, :writer
  @@all =[]

  def initialize(name,year,cast,director,producer,writer)
    @name = name
    @year =year
    @cast = cast
    @director = director
    @producer = producer
    @writer = writer
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    movie = @@all.find{|movie| movie.name==name}
  end

  def add_movie(movie)
    
  end

end
