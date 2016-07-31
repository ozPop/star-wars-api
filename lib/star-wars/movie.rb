class Movie
  # Belongs to a director
  # Belongs to a character
  # Has many characters
  attr_accessor :name
  attr_reader :director, :characters

  @@all = []

  def initialize(name, director = nil, characters = nil)
    @name = name
    self.director = director
    self.characters = characters
  end

  def self.all
    @@all
  end


end