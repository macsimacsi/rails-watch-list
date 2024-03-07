require 'faker'

# Generate fake data for movies
Movie.destroy_all
List.destroy_all
Bookmark.destroy_all

10.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph,
    poster_url: Faker::Internet.url,
    rating: Faker::Number.between(from: 1, to: 10)
  )
end

# Generate fake data for lists
5.times do
  List.create!(
    name: Faker::Book.genre
  )
end

puts "Generated"
