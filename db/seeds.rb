# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: "zander@example.com", password: "password1234")

10.times do |i|
  Item.create(name: "Item #{i}", description: "Better than item # #{i-1}", 
              image: File.open("spec/asset_specs/photos/item.JPG"), user: User.first) 
end
