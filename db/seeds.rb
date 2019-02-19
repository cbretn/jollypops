# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning databases..."

SpaceTag.destroy_all
Tag.destroy_all
Space.destroy_all
User.destroy_all

puts "Creating Tags..."

outdoor = Tag.create!(title: "outdoor")
kitchen = Tag.create!(title: "kitchen")
wifi = Tag.create!(title: "wifi")
floor = Tag.create!(title: "ground floor")
sound = Tag.create!(title: "sound system")
balcony = Tag.create!(title: "balcony")
smoking = Tag.create!(title: "non-smoking")
toilets = Tag.create!(title: "toilets")
light = Tag.create!(title: "natural light")
water = Tag.create!(title: "running water")
ac = Tag.create!(title: "AC")
art = Tag.create!(title: "art space")

puts "Adding users..."

charles = User.new(email: "charles-breton@hotmail.fr", first_name: "Charles", last_name: "Breton", password: "charles")
charles.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550217962/mnjhz9aerxvtgsr3c3tp.png"
charles.save!

lorenzo = User.new(email: "lorenzo@hotmail.fr", first_name: "Lorenzo", last_name: "Xavier", password: "lorenzo")
lorenzo.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550220466/o5idwsp16eh3pqk8zpcm.jpg"
lorenzo.save!

george = User.new(email: "george.s.ballard@outlook.com", first_name: "George", last_name: "Ballard", password: "george")
george.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550218136/d82xmivgrtpqwj7k17a7.jpg"
george.save!

puts "Creating Spaces..."

louvre = Space.new(name: "Le Louvre", location: "1 rue de Rivoli, 75001 Paris",
  description: "The most famous museum in the world", price: 4000)
louvre.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550218024/xzwwjuitm7fx9ksolw82.jpg"
louvre.user = charles
louvre.save!

stgm = Space.new(name: "Saint-Germain Store", location: "178, Boulevard Saint-Germain, 75006 Paris, France",
  description: "blablabla", price: 400 )
stgm.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550550213/popupstore.jpg"
stgm.user = charles
stgm.save!

puebla = Space.new(name: "Pavillon Puebla", location: "Avenue Darcel, 75019 Paris, France",
  description: "Ideal location with sunny terrace in the romantic Parc des Buttes-Chaumonts.", price: 2500)
puebla.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550218989/trt1esjas3jpbwjmszja.jpg"
puebla.user = charles
puebla.save!

bataclan = Space.new(name: "Bataclan", location: "50 Boulevard Voltaire, 75011 Paris, France",
  description: "Concert venue close to République", price: 800)
bataclan.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550218860/ebbaerrumkf6upbelayi.jpg"
bataclan.user = charles
bataclan.save!

centquatre = Space.new(name: "CentQuatre", location: "5 Rue Curial, 75019 Paris, France",
  description: "parisian art space for temporary exhibitions", price: 300)
centquatre.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550548762/104.jpg"
centquatre.user = charles
centquatre.save!

palais = Space.new(name: "Grand Palais", location: "3 Avenue du Général Eisenhower, 75008 Paris, France",
  description: "Contemporary art museum with an art deco \"verrière\"", price: 2500)
palais.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550218775/j6s3vdro96qh1smrjqnk.jpg"
palais.user = charles
palais.save!

jcqm = Space.new(name: "Jacquemart-André", location: "158 Boulevard Haussmann, 75008 Paris, France",
  description: "blablabla", price: 400 )
jcqm.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550550427/jacquemartandre.jpg"
jcqm.user = charles
jcqm.save!

eiffel = Space.new(name: "Tour Eiffel", location: "5 Avenue Anatole France, 75007 Paris, France",
  description: "the green lawn of the iron lady", price: 10000)
eiffel.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550547832/0116.jpg"
eiffel.user = charles
eiffel.save!

flv = Space.new(name: "Fondation Louis Vuitton", location: "8 Avenue du Mahatma Gandhi, 75116 Paris, France",
  description: "promoting contemporary art and culture in the middle of the Bois de Boulogne", price: 800)
flv.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550549006/FLV.jpg"
flv.user = charles
flv.save!

mauve = Space.new(name: "Tiny boutique in Convention", location: "75, rue des entrepreneurs",
  description: "blablabla", price: 400 )
mauve.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550550367/mauve.jpg"
mauve.user = charles
mauve.save!

philharmonie = Space.new(name: "Philharmonie de Paris", location: "221, avenue Jean Jaurès, Paris",
  description: "concert hall in the Parc de La Vilette", price: 1000)
philharmonie.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550549132/philharmonie.jpg"
philharmonie.user = charles
philharmonie.save!

mdm = Space.new(name: "My Dressmaker Showroom", location: "13 Rue de Charonne, 75011 Paris, France",
  description: "blablabla", price: 400 )
mdm.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550549844/mydressmaker.jpg"
mdm.user = charles
mdm.save!

citemode = Space.new(name: "Cité de la mode", location: "34 Quai d'Austerlitz, 75013 Paris, France",
  description: "blablabla", price: 400 )
citemode.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550549600/citemode.jpg"
citemode.user = charles
citemode.save!

legraverand = Space.new(name: "Boutique Legraverand", location: "24, rue Chaligny, 75012 Paris, France",
  description: "blablabla", price: 400 )
legraverand.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550550633/legraverand.jpg"
legraverand.user = charles
legraverand.save!

perchoir = Space.new(name: "Le Perchoir", location: "14 Rue Crespin du Gast, 75011 Paris, France",
  description: "blablabla", price: 400 )
perchoir.remote_photo_url = "https://res.cloudinary.com/cbretn/image/upload/v1550549723/perchoir.jpg"
perchoir.user = charles
perchoir.save!


puts "Add tags to spaces..."

SpaceTag.create!(space: eiffel, tag: outdoor)
SpaceTag.create!(space: eiffel, tag: smoking)
SpaceTag.create!(space: eiffel, tag: light)
SpaceTag.create!(space: eiffel, tag: wifi)

SpaceTag.create!(space: louvre, tag: art)
SpaceTag.create!(space: louvre, tag: smoking)
SpaceTag.create!(space: louvre, tag: light)

SpaceTag.create!(space: centquatre, tag: art)
SpaceTag.create!(space: centquatre, tag: light)
SpaceTag.create!(space: centquatre, tag: smoking)
SpaceTag.create!(space: centquatre, tag: wifi)

SpaceTag.create!(space: legraverand, tag: kitchen)
SpaceTag.create!(space: legraverand, tag: light)
SpaceTag.create!(space: legraverand, tag: smoking)
SpaceTag.create!(space: legraverand, tag: floor)


puts "Add reviews to spaces..."

Review.create!(content: "Big space, but a lot of tourists" , space: eiffel, user: charles)
Review.create!(content: "Really liked it" , space: eiffel, user: lorenzo)
Review.create!(content: "Meeh", space: eiffel, user: george)

Review.create!(content: "too many statues", space: louvre, user: lorenzo)
Review.create!(content: "great acoustics", space: louvre, user: george)


Review.create!(content: "very diverse, natural light is good", space: centquatre, user: charles)
Review.create!(content: "excellent space for art exhibits", space: centquatre, user: george)

Review.create!(content: "modest but fully functional", space: legraverand, user: lorenzo)
Review.create!(content: "had a bad experience with the renter", space: legraverand, user: charles)

puts "Add bookings to spaces..."

puts "Add messages to bookings..."





# new_book = Booking.new(check_in: Date.new, check_out: Date.new, space: Space.first, user: User.first)

# new_book.save

# new_message = Message.new(
#   content: "Hello lorenzo",
#   from: User.first,
#   to: User.last,
#   booking: Booking.first
# )

# new_message.save
