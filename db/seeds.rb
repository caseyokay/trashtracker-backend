# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting Old recods"
TrashCategory.destroy_all
User.destroy_all

puts "Creating new records!"
TrashCategory.create!(
    kind: "landfill",
    image: "https://dur-cjweb.newscyclecloud.com/storyimage/CJ/20200904/NEWS01/200909926/AR/0/AR-200909926.jpg"
)

TrashCategory.create!(
    kind: "compost",
    image: "https://cdn.shopify.com/s/files/1/0272/1982/0604/articles/composting-image.jpg?v=1572870863"
)

TrashCategory.create!(
    kind: "recycling",
    image: "https://hips.hearstapps.com/hmg-prod/images/plastic-recycling-symbols-1602875439.jpg"
)

5.times do
    user = User.create!(
        name: Faker::Movies::LordOfTheRings.character,
        email: "lotr@gmail.com",
        password: 12345
    )
end

puts "Done!"

