require_relative '../config/environment.rb'

ken = Artist.new("Ken", 20)
michelle = Artist.new("Michelle", 10)

g1 = Gallery.new("Metropolitan", "NYC")
g2 = Gallery.new("The Whittney", "Midtown")

k_p1 = Painting.new("Finger Painting", 15, ken, g2)
k_p2 = Painting.new("Mona Lisa", 1, ken, g1)
m_p1 = Painting.new("Starry Night", 30, michelle, g1)
m_p2 = Painting.new("The Last Supper", 20, michelle, g2)

new_painting = michelle.create_painting("Orange", 30, g1)
new_painting = ken.create_painting("Banana", 31, g2)

binding.pry

puts "Bob Ross rules."
