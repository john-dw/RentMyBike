# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "date"

Review.destroy_all
Booking.destroy_all
Bike.destroy_all
User.destroy_all

puts "Creating Users..."

@clemence = User.new(username: "clemence", email: "clemence@bike.com", password: "password", description: "This is me. I love strange bikes.")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657467718/epx2yy70xnkquezsx57y.jpg")
@clemence.photo.attach(io: file, filename: "clemence.png", content_type: "image/png")
@clemence.save!

@jeremy = User.new(username: "jeremy", email: "jeremy@bike.com", password: "password", description: "This is me. I love bikes")
file = URI.open("https://avatars.githubusercontent.com/u/108180668?v=4")
@jeremy.photo.attach(io: file, filename: "jeremy.png", content_type: "image/png")
@jeremy.save!

@jeannoel = User.new(username: "jeannoel", email: "jeannoel@bike.com", password: "password", description: "This is me. I love fast bikes.")
file = URI.open("https://avatars.githubusercontent.com/u/100160246?v=4")
@jeannoel.photo.attach(io: file, filename: "jeannoel.png", content_type: "image/png")
@jeannoel.save!

@john = User.new(username: "john", email: "john@bike.com", password: "password", description: "This is me. I love electrical bikes.")
file = URI.open("https://avatars.githubusercontent.com/u/106547290?v=4")
@john.photo.attach(io: file, filename: "john.png", content_type: "image/png")
@john.save!

puts "Creating datas..."

@bike1 = Bike.new(category: "Touring", price_per_day: 19 , location: "5 rue de la pompe paris" , name: "Tricycle bike", description: "Mostly for kids or little people", model: "Terminator XRM", user_id: @clemence.id)
file = URI.open("https://www.velo-on-line.fr/672-zoom_default/tricycle-tc-1.jpg")
@bike1.photo.attach(io: file, filename: "bike3.png", content_type: "image/png")
@bike1.save!

@booking1_bike1 = Booking.new(bike_id: Bike.last.id, user_id: @jeremy.id, start_date: Date.new(2020, 3, 25), end_date: Date.new(2020, 5, 12), status: "accepted")
@booking1_bike1.save!

@review1_booking1 = Review.new(user_id: @jeremy.id, booking_id: Booking.last.id, comment: "Very cool bike", rating: 3)
@review1_booking1.save!

@review2_booking1 = Review.new(user_id: @jeannoel.id, booking_id: Booking.last.id, comment: "Very good bike, I recommand it", rating: 4)
@review2_booking1.save!

@booking2_bike1 = Booking.new(bike_id: Bike.last.id, user_id: @jeannoel.id, start_date: Date.new(2022, 10, 29), end_date: Date.new(2022, 11, 12), status: "pending")
@booking2_bike1.save!

@bike2 = Bike.new(category: "City", price_per_day: 15 , location: "56 boulevard saint-michel paris" , name: "Unicycle bike", description: "Unbalanced. Beware, this bike is not suitable for everyone.", model: "Unicycle bike", user_id: @clemence.id)
file = URI.open("https://storage.googleapis.com/tradeinn-images/images/products_image/13764/fotos/137647926.jpg")
@bike2.photo.attach(io: file, filename: "bike4.png", content_type: "image/png")
@bike2.save!

@booking1_bike2 = Booking.new(bike_id: Bike.last.id, user_id: @jeannoel.id, start_date: Date.new(2021, 4, 25), end_date: Date.new(2021, 5, 12), status: "accepted")
@booking1_bike2.save!

@review1_booking1 = Review.new(user_id: @jeannoel.id, booking_id: Booking.last.id, comment: "Too heavy, not worth it!", rating: 2)
@review1_booking1.save!

@review2_booking2 = Review.new(user_id: @john.id, booking_id: Booking.last.id, comment: "Super bike, we had a blast", rating: 4)
@review2_booking2.save!

@booking2_bike2 = Booking.new(bike_id: Bike.last.id, user_id: @clemence.id, start_date: Date.new(2022, 11, 29), end_date: Date.new(2022, 11, 30), status: "pending")
@booking2_bike2.save!


@bike1 = Bike.new(category: "City", price_per_day: 24 , location: "16 villa gaudelet paris" , name: "Fixie bike upgraded", description: "You will look kinda cool with this bike", model: "Bobo master", user_id: @jeremy.id)
file = URI.open("https://cdn.shopify.com/s/files/1/0232/3305/products/state_bicycle_4130_fixed_gear_matte_black_2.jpg")
@bike1.photo.attach(io: file, filename: "bike1.png", content_type: "image/png")
@bike1.save!

@booking1_bike1 = Booking.new(bike_id: Bike.last.id, user_id: @jeannoel.id, start_date: Date.new(2021, 2, 25), end_date: Date.new(2021, 3, 12), status: "accepted")
@booking1_bike1.save!

@review1_booking1 = Review.new(user_id: @jeannoel.id, booking_id: Booking.last.id, comment: "I will rent it again!", rating: 4)
@review1_booking1.save!

@review2_booking1 = Review.new(user_id: @john.id, booking_id: Booking.last.id, comment: "Too old and too heavy", rating: 1)
@review2_booking1.save!

@booking2_bike1 = Booking.new(bike_id: Bike.last.id, user_id: @clemence.id, start_date: Date.new(2022, 9, 29), end_date: Date.new(2022, 10, 12), status: "pending")
@booking2_bike1.save!

@bike2 = Bike.new(category: "City", price_per_day: 20 , location: "12 rue soyer Neuilly-sur-Seine" , name: "Fixie bike", description: "For middle-aged bobos nostalgic of the 2010s years.", model: "Bobo novice", user_id: @jeremy.id)
file = URI.open("https://thefixedgearshop.fr/wp-content/uploads/2019/09/state_bicycle_fixie_rigby_bike_1.jpg")
@bike2.photo.attach(io: file, filename: "bike1.png", content_type: "image/png")
@bike2.save!

@booking1_bike2 = Booking.new(bike_id: Bike.last.id, user_id: @clemence.id, start_date: Date.new(2021, 2, 25), end_date: Date.new(2021, 3, 12), status: "accepted")
@booking1_bike2.save!

@review1_booking1 = Review.new(user_id: @clemence.id, booking_id: Booking.last.id, comment: "Great great great", rating: 5)
@review1_booking1.save!

@review2_booking1 = Review.new(user_id: @jeannoel.id, booking_id: Booking.last.id, comment: "Not so good, disappointed", rating: 2)
@review2_booking1.save!

@booking2_bike2 = Booking.new(bike_id: Bike.last.id, user_id: @john.id, start_date: Date.new(2022, 9, 29), end_date: Date.new(2022, 10, 12), status: "pending")
@booking2_bike2.save!

@bike1 = Bike.new(category: "City", price_per_day: 36 , location: "12 rue du colisée paris" , name: "Supercycle bike", description: "Big, can roll over anything.", model: "Supercycle WR100", user_id: @jeannoel.id)
file = URI.open("https://media-www.canadiantire.ca/product/playing/cycling/bicycles/0711977/supercycle-big-rig-4-0-fat-tire-hardtail-mountain-bike-26-in-550ddac3-6d8f-41e1-a311-fe7c874f8b98.png")
@bike1.photo.attach(io: file, filename: "bike5.png", content_type: "image/png")
@bike1.save!

@booking1_bike1 = Booking.new(bike_id: Bike.last.id, user_id: @clemence.id, start_date: Date.new(2021, 2, 25), end_date: Date.new(2021, 3, 12), status: "accepted")
@booking1_bike1.save!

@review1_booking1 = Review.new(user_id: @clemence.id, booking_id: Booking.last.id, comment: "Will rent it again", rating: 5)
@review1_booking1.save!

@review2_booking1 = Review.new(user_id: @john.id, booking_id: Booking.last.id, comment: "Very good, I recommand", rating: 4)
@review2_booking1.save!

@booking2_bike1 = Booking.new(bike_id: Bike.last.id, user_id: @clemence.id, start_date: Date.new(2022, 9, 29), end_date: Date.new(2022, 10, 12), status: "pending")
@booking2_bike1.save!

@bike2 = Bike.new(category: "Touring", price_per_day: 34 , location: "Place des victoires paris" , name: "Race bicycle", description: "Very fast", model: "Carbon bike", user_id: @jeannoel.id)
file = URI.open("https://cdn.rosebikes.de/cms/cms.61c20b48d30c78.97094843.jpg?im=Resize=(960)")
@bike2.photo.attach(io: file, filename: "bike6.png", content_type: "image/png")
@bike2.save!

@booking1_bike2 = Booking.new(bike_id: Bike.last.id, user_id: @john.id, start_date: Date.new(2021, 2, 25), end_date: Date.new(2021, 3, 12), status: "accepted")
@booking1_bike2.save!

@review1_booking1 = Review.new(user_id: @john.id, booking_id: Booking.last.id, comment: "Great bike!!!!", rating: 4)
@review1_booking1.save!

@review2_booking1 = Review.new(user_id: @clemence.id, booking_id: Booking.last.id, comment: "Way too heavy", rating: 1)
@review2_booking1.save!

@booking2_bike2 = Booking.new(bike_id: Bike.last.id, user_id: @jeremy.id, start_date: Date.new(2022, 9, 29), end_date: Date.new(2022, 10, 12), status: "pending")
@booking2_bike2.save!


@bike1 = Bike.new(category: "City", price_per_day: 14 , location: "127 avenue lecourbe paris" , name: "Electrical Velib", description: "Bicycle with electrical assistance which allows you to move around the city rapidly and without sweating.", model: "Blue Velib", user_id: @john.id)
file = URI.open("https://arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/XQ7UVTB2ZA7LS7MAYCLJCHGGTU.jpg")
@bike1.photo.attach(io: file, filename: "bike5.png", content_type: "image/png")
@bike1.save!

@booking1_bike1 = Booking.new(bike_id: Bike.last.id, user_id: @jeannoel.id, start_date: Date.new(2021, 2, 25), end_date: Date.new(2021, 3, 12), status: "accepted")
@booking1_bike1.save!

@review1_booking1 = Review.new(user_id: @jeannoel.id, booking_id: Booking.last.id, comment: "Great bike, I will rent it again!!", rating: 4)
@review1_booking1.save!

@review2_booking1 = Review.new(user_id: @jeremy.id, booking_id: Booking.last.id, comment: "Not so good...", rating: 1)
@review2_booking1.save!

@booking2_bike1 = Booking.new(bike_id: Bike.last.id, user_id: @clemence.id, start_date: Date.new(2022, 9, 29), end_date: Date.new(2022, 10, 12), status: "pending")
@booking2_bike1.save!

@bike2 = Bike.new(category: "City", price_per_day: 7 , location: "1 rue de la paix paris" , name: "Green Velib", description: "Very heavy bike. For courageous people.", model: "Normal Velib", user_id: @john.id)
file = URI.open("https://cityride.fr/wp-content/uploads/2017/10/20171025_082141.jpg")
@bike2.photo.attach(io: file, filename: "bike6.png", content_type: "image/png")
@bike2.save!

@booking1_bike2 = Booking.new(bike_id: Bike.last.id, user_id: @jeremy.id, start_date: Date.new(2021, 4, 25), end_date: Date.new(2021, 5, 12), status: "accepted")
@booking1_bike2.save!

@review1_booking1 = Review.new(user_id: @jeremy.id, booking_id: Booking.last.id, comment: "Too heavy, not recommanded", rating: 2)
@review1_booking1.save!

@review2_booking2 = Review.new(user_id: @clemence.id, booking_id: Booking.last.id, comment: "Very good one!!", rating: 4)
@review2_booking2.save!

@booking2_bike2 = Booking.new(bike_id: Bike.last.id, user_id: @jeannoel.id, start_date: Date.new(2022, 11, 29), end_date: Date.new(2022, 11, 30), status: "pending")
@booking2_bike2.save!

puts "Seed successfully created!"
