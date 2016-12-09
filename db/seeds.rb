# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "places", "listings"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "leealexcash",
  email: "leealexandercash@gmail.com",
  password: "password",
  password_confirmation: "password"
},{
  username: "arabellagais",
  email: "arabella.gais@gmail.com",
  password: "password",
  password_confirmation: "password"
}])

Place.create!([{
  google_place_id: "googleplaceidrandomstringoflettersandnumbers",
  address: "230 Commercial Road, London, E1 2NB, UK",
  phone_number: "020 7790 3299",
  lat: 51.514516,
  lng: -0.0584069999,
  icon: "https://maps/gstatic.com/mapfiles/place_api/icon/restaurant-71.png",
  name: "Efes Restaurant",
  rating: 4.1,
  website: "http://www.efeslondon.co.uk"
}, {
  google_place_id: "anotherrandomstringoflettersandnumbers",
  address: "A second address",
  phone_number: "020 567891234",
  lat: 56.514516,
  lng: -1.0584069999,
  icon: "https://maps/gstatic.com/mapfiles/place_api/icon/restaurant-71.png",
  name: "Second Restuarant",
  rating: 21.1,
  website: "http://www.example.com"
}])

Listing.create!([{
  image: "http://www.seriouseats.com/images/2015/02/20150228-vegan-loaded-queso-dip7.jpg",
  name: "Fully Loaded Queso Dip",
  price: 5.95,
  description: "The ultimate party snack, now in a 100% animal product-free form. This vegan queso dip is packed with a gooey cashew and potato-based nacho sauce, soy-lentil chorizo, avocados, scallions, tomatoes with chilies, and black beans. The flavor is so good even your omnivore friends won't know that it's vegan.",
  user_id: 1,
  place_id: 1
  }, {
    image: "http://www.seriouseats.com/images/2015/02/20150228-vegan-loaded-queso-dip7.jpg",
    name: "Another Fully Loaded Queso Dip",
    price: 59.95,
    description: "A very expensive party snack.",
    user_id: 2,
    place_id: 2
  }])

puts "Seeds ran successfully!"
