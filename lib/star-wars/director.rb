class Director
  # Has many movies
  # Has many characters through movies
  attr_accessor :name, :film_title

  @@all = []

  def initialize(director_hash)
    director_hash.each do |key, value|
      self.send(("#{key}="), value)
    end
    @@all << self
  end

  def self.create_from_collection(directors_array)
    # binding.pry
    directors_array.each do |director|
      self.new(director)
    end
  end

  def self.all
    @@all
  end

end