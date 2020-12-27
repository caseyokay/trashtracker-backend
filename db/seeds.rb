# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🔫 Deleting Old records"
User.destroy_all
TrashItem.destroy_all
TrashCategory.destroy_all


puts "🧝‍♀️ Creating new records!"
TrashCategory.create!(
    kind: "landfill",
    image: "https://i.ibb.co/dKM699P/Screen-Shot-2020-12-26-at-8-49-08-PM.png"
)
#"https://dur-cjweb.newscyclecloud.com/storyimage/CJ/20200904/NEWS01/200909926/AR/0/AR-200909926.jpg"

TrashCategory.create!(
    kind: "compost",
    image: "https://i.ibb.co/kDH0cL3/Screen-Shot-2020-12-26-at-8-45-59-PM.png"
)
#"https://cdn.shopify.com/s/files/1/0272/1982/0604/articles/composting-image.jpg?v=1572870863"

trash = TrashCategory.create!(
    kind: "recycling",
    image: "https://i.ibb.co/7pyKWMX/Screen-Shot-2020-12-26-at-8-41-32-PM.png"
)

# "https://www.coralville.org/ImageRepository/Document?documentID=9113"

5.times do
    User.create!(
        name: Faker::TvShows::Buffy.character,
        email: "lotr@gmail.com",
        password: 12345
    )
end

user = User.create!(
    name: "Casey",
    email: "lotr@gmail.com",
    password: 12345
)

3.times do
    TrashItem.create!(
        description: Faker::Food.dish,
        date: Faker::Date.between(from: 2.days.ago, to: Date.today),
        user: user,
        trash_category: trash
    )
end

puts "🔮 Done!"

