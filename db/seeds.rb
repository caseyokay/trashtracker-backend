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
landfill = TrashCategory.create!(
    kind: "landfill",
    image: "https://i.ibb.co/dKM699P/Screen-Shot-2020-12-26-at-8-49-08-PM.png"
)

compost = TrashCategory.create!(
    kind: "compost",
    image: "https://i.ibb.co/kDH0cL3/Screen-Shot-2020-12-26-at-8-45-59-PM.png"
)

recycling = TrashCategory.create!(
    kind: "recycling",
    image: "https://i.ibb.co/7pyKWMX/Screen-Shot-2020-12-26-at-8-41-32-PM.png"
)


5.times do
    User.create!(
        name: Faker::TvShows::Buffy.character,
        email: Faker::Internet.email,
        password: "12345"
    )
end

user = User.create!(
    name: "Casey",
    email: "lotr@gmail.com",
    password: "casey12345"
)

userPreset = User.create!(
    name: "preset",
    email: "preset@gmail.com",
    password: "preset12345"
)

3.times do
    TrashItem.create!(
        description: Faker::Food.dish,
        date: Faker::Date.between(from: 2.days.ago, to: Date.today),
        image: "https://i.ibb.co/yPZyqWx/Screen-Shot-2021-01-04-at-1-41-32-PM.png",
        preset: false,
        user: user,
        trash_category: recycling
    )
end

TrashItem.create!(
    description: "bottle",
    date: Date.today,
    image: "https://i.ibb.co/G9L6Y65/Screen-Shot-2021-01-04-at-5-19-04-PM.png",
    preset: true,
    user: userPreset,
    trash_category: recycling
)

TrashItem.create!(
    description: "meal scraps",
    date: Date.today,
    image: "https://i.ibb.co/kDH0cL3/Screen-Shot-2020-12-26-at-8-45-59-PM.png",
    preset: true,
    user: userPreset,
    trash_category: compost
)

TrashItem.create!(
    description: "plastic wrap",
    date: Date.today,
    image: "https://i.ibb.co/yfcmv63/Screen-Shot-2021-01-04-at-5-23-39-PM.png",
    preset: true,
    user: userPreset,
    trash_category: landfill
)

puts "🔮 Done!"

