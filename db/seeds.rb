# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Message.destroy_all

new_book = Booking.new(check_in: Date.new, check_out: Date.new, space: Space.first, user: User.first)

new_book.save

new_message = Message.new(
  content: "Hello lorenzo",
  from: User.first,
  to: User.last,
  booking: Booking.first
)

new_message.save

Tag.create!(title: "outdoor")
Tag.create!(title: "kitchen")
Tag.create!(title: "wifi")
Tag.create!(title: "ground floor")
Tag.create!(title: "sound system")
Tag.create!(title: "balcony")
Tag.create!(title: "non-smoking")
Tag.create!(title: "toilets")
Tag.create!(title: "natural light")
Tag.create!(title: "running water")
Tag.create!(title: "AC")
