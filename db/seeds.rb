# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "admin", email: "admin@example.com", password: "password", password_confirmation: "password", role: User.roles[:admin])
User.create(username: "rian", email: "rian@example.com", password: "password", password_confirmation: "password", role: User.roles[:admin])
User.create(username: "fifi", email: "fifi@example.com", password: "password", password_confirmation: "password", role: User.roles[:admin])
User.create(username: "lambo", email: "lambo@example.com", password: "password", password_confirmation: "password")

5.times do |x|
  Upload.create(name: "Fave #{x} Model", 
    description: "Try #{x} times to find a better #{x}",
    user_id: User.first.id).thumbnail.attach(io: File.open('app/assets/images/seeds/scooter_poster.jpg'), filename: 'scooter_poster.jpg')
  
    Upload.create(name: "Cool #{x} Name", 
                description: "This #{x} is a description of #{x}",
                user_id: User.first.id).thumbnail.attach(io: File.open('app/assets/images/seeds/green.png'), filename: 'green.png')
  
  Upload.create(name: "Happy #{x} Asset", 
                description: "Nice #{x} describing a way cute #{x}",
                user_id: User.first.id).thumbnail.attach(io: File.open('app/assets/images/seeds/purple.jpg'), filename: 'purple.jpg')

  Upload.create(name: "Whoa #{x} File", 
                description: "This #{x} is the best #{x} thingy",
                user_id: User.first.id).thumbnail.attach(io: File.open('app/assets/images/seeds/pink.jpg'), filename: 'pink.jpg')
end
