# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting eddo..."
eddo = User.find_by(email: "eddo@example.com")
eddo.destroy if eddo
puts "he done got crushed"
puts ""


puts "Creating Restauranteur"
eddo = User.create!(
                    email: "eddo@example.com",
                    password: "secret",
                    first_name: "Edward",
                    last_name: "Blundell",
                    phone: 123456789,
                    date_of_birth: Date.new(2001,1,1)
                  )
puts "#{eddo.first_name} #{eddo.last_name} created"
puts ""

puts "demolishing old malls"
Mall.destroy_all
puts "wrecking ball reentering garage"
puts ""


puts "creating Starcourt Mall..."
starcourt = Mall.create!(name: "Starcourt Mall")
puts "done"
puts ""
puts "adding restaurants to #{starcourt.name}"
Restaurant.create!(
                    user: eddo,
                    mall: starcourt,
                    name: "Scoops Ahoy",
                    cuisine: "Ice Cream",
                    opening_time: 10,
                    closing_time: 22
                  )
puts "creating Springfield Mall..."
springfield = Mall.create!(name: "Springfield Mall")
puts "Hooray, all done"

