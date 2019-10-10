require_relative '../config/environment.rb'

a1 = Artist.new("Picasso", 40)
a2 = Artist.new("Dali", 30)

g1 = Gallery.new("The Peter Gallery", "NYC")
g2 = Gallery.new("The Bailey Gallery", "Milwaukee")


p1 = Painting.new("The Old Guitarist", 100, a1, g1)
p2 = Painting.new("Don Quixote", 200, a1, g2)
p3 = Painting.new("The Persitence of Memory", 300, a2, g1)
p4 = Painting.new("Lobster Telephone", 400, a2, g2)





binding.pry

puts "Bob Ross rules."
