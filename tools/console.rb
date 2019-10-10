require_relative '../config/environment.rb'

nick = Artist.new("Nick", 1)
matt = Artist.new("Matt", 420)

g1 = Gallery.new("Louvre", "Paris")
g2 = Gallery.new("MOMA", "NYC")

p1 = Painting.new("Starry Night", 5, g1, nick)
p2 = Painting.new("Campbell Soup x4", 100, g2, nick)
p3 = Painting.new("Dragonball Z", 50000, g2, matt)



binding.pry

puts "Bob Ross rules."
