class Artist

  attr_reader :name, :years_experience

  @@all = []
  # @@paintings = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  
  def self.all 
    @@all   
  end
  
  
  
  def paintings
    #returns an array of all the paintings
    # old code - @@paintings
    
    paintings = Painting.all 
    paintings.select do |painting|
      painting.artist == self
    end
  end
  
  def self.total_experience
    total = 0
    
    all.each do |artist|
      total += artist.years_experience
    end
    
    return total
  end
  
  def create_painting(title, price, gallery)
    painting = Painting.new(title, price, gallery, self)
  end
  
  def cities
    #return an array of all cities that an artist has paintings in 
    #paintings = Paintings.all
    # paintings.select do |painting|
    #   painting.city == 
    # end
  end
  
  def galleries
    #Returns an array of all the galleries that an artist has paintings in
    paintings.collect do |painting|
      painting.gallery
    end
  end
  
  def cities 
    galleries.collect do |gallery|
      gallery.city
    end
  end
  
  def self.most_prolific
    @@all.max { |a1, a2| a1.paintings.count / a1.years_experience <=> a2.paintings.count / a2.years_experience }
  end
end
