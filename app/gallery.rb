class Gallery

  attr_reader :name, :city
  @@all = [ ]

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    #returns an array of all the paintings in the gallery
    gallery_paintings = Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    #returns an array of all artists that 
    #have a painting in this gallery
    gallery_paintings = self.paintings
    gallery_artists = gallery_paintings.map do |painting|
      painting.artist
    end
    gallery_artists.uniq!
  end

  def artist_names
    #returns an array of all artists that 
    #have a painting in this gallery
    gallery_paintings = self.paintings
    gallery_artist_names = gallery_paintings.map do |painting|
      painting.artist.name
    end
    gallery_artist_names.uniq!
  end

  def most_expensive_painting
    #returns an instance of the most expensive painting
    #in the gallery
    gallery_paintings = self.paintings
    gallery_prices = gallery_paintings.map do |painting|
      painting.price
    end
    gallery_paintings[gallery_prices.index(gallery_prices.max)]
  end

  def self.all
    @@all
  end

end
