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


puts "Creating Restauranteur..."
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

puts "demolishing old malls..."
Mall.destroy_all
puts "wrecking ball reentering garage"
puts ""


puts "creating Starcourt Mall..."
starcourt = Mall.create!(name: "Starcourt Mall")
puts "adding restaurants to #{starcourt.name}..."
scoops = Restaurant.create!(
                    user: eddo,
                    mall: starcourt,
                    name: "Scoops Ahoy",
                    cuisine: "Ice Cream",
                    opening_time: 10,
                    closing_time: 22
                  )

puts "created #{scoops.name}"
puts "adding menu..."

MenuItem.create!(
                  name: "Banana Split",
                  restaurant: scoops,
                  price: 12,
                  description: "I have no idea, I've never had one",
                  prep_time: 10,
                  menu_category: "Sundaes"
                )

MenuItem.create!(
                  name: "Eggo Sundae",
                  restaurant: scoops,
                  price: 15,
                  description: "Loads of Eggos, with Ice Cream and stuff",
                  prep_time: 14,
                  menu_category: "Sundaes"
                )

MenuItem.create!(
                  name: "Upside Down Parfait",
                  restaurant: scoops,
                  price: 8,
                  description: "Turn it updside down for a surprise from the other side!",
                  prep_time: 10,
                  menu_category: "Sundaes"
                )

puts "done adding"
scoops.menu_items.each.with_index { |item, index| puts "#{index + 1}) #{item.name}" }
puts "to #{scoops.name}"
puts ""

puts "creating Springfield Mall..."
springfield = Mall.create!(name: "Springfield Mall")
puts "adding restaurants to #{springfield.name}..."

dutchman = Restaurant.create!(
                    user: eddo,
                    mall: springfield,
                    name: "The Frying Dutchman",
                    cuisine: "Seafood",
                    opening_time: 10,
                    closing_time: 22
                  )
puts "created #{dutchman.name}"
puts "adding menu..."

MenuItem.create!(
                  name: "Bottomless Pete's All-You-Can-Eat",
                  restaurant: dutchman,
                  price: 35,
                  description: "Come take the challenge of the monster from the depths with all you can eat seafood",
                  prep_time: 0,
                  menu_category: "All-You-Can-Eat"
                )

MenuItem.create!(
                  name: "Lobster Parfait",
                  restaurant: dutchman,
                  price: 20,
                  description: "Enjoy the delights of a dead crustacean, mixed with ice cream",
                  prep_time: 0,
                  menu_category: "Dessert"
                )

MenuItem.create!(
                  name: "Beer",
                  restaurant: dutchman,
                  price: 5,
                  prep_time: 0,
                  menu_category: "Drinks"
                )

MenuItem.create!(
                  name: "Tilapia Juice",
                  restaurant: dutchman,
                  price: 4,
                  description: "Freshly squeezed tilapia",
                  prep_time: 0,
                  menu_category: "Drinks"
                )

puts "done adding"
dutchman.menu_items.each.with_index { |item, index| puts "#{index + 1}) #{item.name}" }
puts "to #{dutchman.name}"
puts ""

moes = Restaurant.create!(
                    user: eddo,
                    mall: springfield,
                    name: "Uncle Moe's Family Feedbag",
                    cuisine: "Fried",
                    opening_time: 10,
                    closing_time: 22
                  )
puts "created #{moes.name}"
puts "adding menu..."

MenuItem.create!(
                  name: "Uncle Moe's Million Dollar Birthday Fries",
                  restaurant: moes,
                  price: 8,
                  description: "If Uncle Moe doesn't smile, you eat for free!",
                  prep_time: 4,
                  menu_category: "Specials"
                )

MenuItem.create!(
                  name: "Flamin' Moe",
                  restaurant: moes,
                  price: 13,
                  description: "Happiness is just a Flamin' Moe away",
                  prep_time: 5,
                  menu_category: "Drinks"
                )

MenuItem.create!(
                  name: "KFP",
                  restaurant: moes,
                  price: 139,
                  description: "Definitely does not contain any panda",
                  prep_time: 25,
                  menu_category: "Specials"
                )

puts "done adding"
moes.menu_items.each.with_index { |item, index| puts "#{index + 1}) #{item.name}" }
puts "to #{moes.name}"
puts ""

krusty = Restaurant.create!(
                    user: eddo,
                    mall: springfield,
                    name: "Krusty Burger",
                    cuisine: "Burgers",
                    opening_time: 10,
                    closing_time: 22
                  )
puts "created #{krusty.name}"
puts "adding menu..."

MenuItem.create!(
                  name: "Krusty Burger",
                  restaurant: krusty,
                  price: 3,
                  description: "The secret's in the juice",
                  prep_time: 3,
                  menu_category: "Burgers"
                )

MenuItem.create!(
                  name: "The Mother Nature Burger",
                  restaurant: krusty,
                  price: 8,
                  description: "As approved personally by Krusty the Klown himself",
                  prep_time: 7,
                  menu_category: "Burgers"
                )

MenuItem.create!(
                  name: "The Clogger",
                  restaurant: krusty,
                  price: 3,
                  description: "For when your arteries are dangerously under-filled",
                  prep_time: 3,
                  menu_category: "Burgers"
                )

puts "done adding"
krusty.menu_items.each.with_index { |item, index| puts "#{index + 1}) #{item.name}" }
puts "to #{krusty.name}"
puts ""

puts "Hooray, all done"

