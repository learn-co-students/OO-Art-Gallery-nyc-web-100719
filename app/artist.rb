class Artist
@@all = [ ]

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self 
  end

  def self.all
    @@all
  end

  def paintings
    paintings = Painting.all
    paintings_by_artist = paintings.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings_by_artist= self.paintings 
    paintings_by_artist.map do |painting|
      painting.gallery.name
    end
  end

  def cities
    paintings_by_artist= self.paintings 
    paintings_by_artist.map do |painting|
      painting.gallery.city
    end
  end

  def self.total_experience
    years = all.map do |artist|
      artist.years_experience 
    end
    years.sum
  end

  def self.most_prolific
    # return artist with the highest amount of paintings 
    #     per yr of experience
    #collect how many paintings each artist has made
    #divide paintings by yr of experience
    #return the artist with higher number
    x = all.map do |artist|
      artist.paintings.count.to_f/ artist.years_experience.to_f 
    end
    all[x.index(x.max)]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
