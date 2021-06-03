# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all

50.times do
  mov = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://picsum.photos/200/300',
    rating: rand(0..100) / 10.0
  )
    mov.save(validate: false)
  puts "Created #{mov.title}"
end

puts "Created #{Movie.count} restaurants"
