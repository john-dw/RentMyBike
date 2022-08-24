# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

@jeremy = User.new(username: "jeremy", email: "jeremy@bike.com", password: "password", description: "This is me. I love bikes")
file = URI.open("https://avatars.githubusercontent.com/u/108180668?v=4")
@jeremy.photo.attach(io: file, filename: "jeremy.png", content_type: "image/png")
@jeremy.save

@bike1 = Bike.new(category: "Mountain", price_per_day: 15 , location: "16 villa gaudelet paris" , name: "Mountain bike", description: "With suspensions", model: "XB36 master", user_id: User.last.id)
file = URI.open("https://cdn.shopify.com/s/files/1/0232/3305/products/state_bicycle_4130_fixed_gear_matte_black_2.jpg")
@bike1.photo.attach(io: file, filename: "bike1.png", content_type: "image/png")
@bike1.save

@bike2 = Bike.new(category: "City", price_per_day: 20 , location: "Place Winston churchill Neuilly-sur-Seine" , name: "City bike", description: "Electricity powered", model: "XB36 novice", user_id: User.last.id)
file = URI.open("https://thefixedgearshop.fr/wp-content/uploads/2019/09/state_bicycle_fixie_rigby_bike_1.jpg")
@bike2.photo.attach(io: file, filename: "bike1.png", content_type: "image/png")
@bike2.save

@clemence = User.new(username: "clemence", email: "clemence@bike.com", password: "password", description: "This is me. I love strange bikes.")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657467718/epx2yy70xnkquezsx57y.jpg")
@clemence.photo.attach(io: file, filename: "clemence.png", content_type: "image/png")
@clemence.save

@bike1 = Bike.new(category: "Touring", price_per_day: 400 , location: "Place victor hugo paris" , name: "Tricycle bike", description: "Asymetry", model: "Tricycle bike", user_id: User.last.id)
file = URI.open("https://www.velo-on-line.fr/672-zoom_default/tricycle-tc-1.jpg")
@bike1.photo.attach(io: file, filename: "bike3.png", content_type: "image/png")
@bike1.save

@bike2 = Bike.new(category: "City", price_per_day: 29 , location: "Tour eiffel paris" , name: "Unicycle bike", description: "Unbalanced", model: "Unicycle bike", user_id: User.last.id)
file = URI.open("https://storage.googleapis.com/tradeinn-images/images/products_image/13764/fotos/137647926.jpg")
@bike2.photo.attach(io: file, filename: "bike4.png", content_type: "image/png")
@bike2.save

@jeannoel = User.new(username: "jeannoel", email: "jeannoel@bike.com", password: "password", description: "This is me. I love fast bikes.")
file = URI.open("https://avatars.githubusercontent.com/u/100160246?v=4")
@jeannoel.photo.attach(io: file, filename: "jeannoel.png", content_type: "image/png")
@jeannoel.save

@bike1 = Bike.new(category: "City", price_per_day: 36 , location: "Champs-élysées" , name: "Supercycle", description: "Big", model: "Supercycle", user_id: User.last.id)
file = URI.open("https://media-www.canadiantire.ca/product/playing/cycling/bicycles/0711977/supercycle-big-rig-4-0-fat-tire-hardtail-mountain-bike-26-in-550ddac3-6d8f-41e1-a311-fe7c874f8b98.png")
@bike1.photo.attach(io: file, filename: "bike5.png", content_type: "image/png")
@bike1.save

@bike2 = Bike.new(category: "Gravel", price_per_day: 34 , location: "Place des victoires paris" , name: "Normal bike", description: "Unbalanced", model: "Normal bike", user_id: User.last.id)
file = URI.open("https://cdn.rosebikes.de/cms/cms.61c20b48d30c78.97094843.jpg?im=Resize=(960)")
@bike2.photo.attach(io: file, filename: "bike6.png", content_type: "image/png")
@bike2.save

@john = User.new(username: "john", email: "john@bike.com", password: "password", description: "This is me. I love electrical bikes.")
file = URI.open("https://avatars.githubusercontent.com/u/106547290?v=4")
@john.photo.attach(io: file, filename: "john.png", content_type: "image/png")
@john.save

@bike1 = Bike.new(category: "City", price_per_day: 61 , location: "Tour Montparnasse" , name: "Velib electrique", description: "libre", model: "Velib electrique", user_id: User.last.id)
file = URI.open("https://arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/XQ7UVTB2ZA7LS7MAYCLJCHGGTU.jpg")
@bike1.photo.attach(io: file, filename: "bike5.png", content_type: "image/png")
@bike1.save

@bike2 = Bike.new(category: "Gravel", price_per_day: 4 , location: "1 rue de la paix paris" , name: "Velib normal", description: "Super lourd", model: "Velib normal", user_id: User.last.id)
file = URI.open("https://cityride.fr/wp-content/uploads/2017/10/20171025_082141.jpg")
@bike2.photo.attach(io: file, filename: "bike6.png", content_type: "image/png")
@bike2.save
