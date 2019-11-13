# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '3333-44444',
    category: 'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '1111-2222',
    category: 'italian'
  },
  {
    name:         'Surpriz',
    address:      'Rue Oberkampf, Paris',
    phone_number: '01.45.23.54.67',
    category: 'french'
  },
  {
    name:         'La mitraillette',
    address:      '5 rue Saint-Maur, Paris',
    phone_number: '06.56.45.65.34',
    category: 'belgian'
  },
  {
    name:         'Sushishop',
    address:      '1 place Denfert-Rochereau, Paris',
    category: 'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
