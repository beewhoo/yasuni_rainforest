# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: 'Cellphone Case iPhone',
  price_in_cents: 995,
  description:'Case for iPhone'
)


Product.create(
  name: 'Cellphone Case Galaxy',
  price_in_cents: 805,
  description:'Case for Galaxy'
)

Product.create(
  name: 'Cellphone Case Pixel',
  price_in_cents: 1005,
  description:'Case for Pixel'
)
