class Movies
  attr_accessor :name, :year,:cast,:director, :producer, :writer
  @@all =[]

  def initialize(name,year,cast,director,producer,writer)
    
    @@all << self
  end

  def self.all
    @@all
  end

  def find_or_create_by_name
  end

  def find_by_name
  end

end
