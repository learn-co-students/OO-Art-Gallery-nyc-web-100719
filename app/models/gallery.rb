class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def paintings
    paintings = Painting.all 
    paintings.select do |painting|
      painting.gallery == self
    end
  end
  
  def artists
    #returns an array of all artists that have a painting in a gallery
    paintings.collect do |painting|
      painting.artist 
    end
  end
  
  def artist_names
    artists.collect do |artist|
      artist.name 
    end
  end
  
  def most_expensive_painting
    paintings.max { |p1, p2| p1.price <=> p2.price }
  end
end
