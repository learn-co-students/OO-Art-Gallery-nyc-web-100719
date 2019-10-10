class Artist

  attr_reader :name, :years_experience

  attr_accessor :pro

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    # return new array of galleries that artist has paintings in
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    total = 0
    self.all.each do |artist|
      total += artist.years_experience
    end
    total
  end 

  def self.most_prolific
    # define most pro as yrs of exp / num of paintings
    # loop through all Artists, get each artist
    # add new variable to accessor - 
    pro_array = self.all.each do |artist|
      artist.pro = (artist.years_experience/artist.paintings.count)
    end
    pro_array.max {|x, y| x.pro <=> y.pro}
    
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end



end
