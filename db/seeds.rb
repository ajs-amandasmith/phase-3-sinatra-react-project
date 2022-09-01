puts "🌱 Seeding books..."

# Seed your database here

# run a loop 10 times
10.times do
  # create a random author
  author = Author.create(
    name: Faker::Book.unique.author
  )

  # create between 1 and 5 books for each author
  rand(1..5).times do
    Book.create(
      title: Faker::Book.unique.title,
      genre: Faker::Book.genre,
      publisher: Faker::Book.publisher,
      author_id: author.id,
      review: Faker::Lorem.paragraph
    )
  end

end

puts "✅ Done seeding!"
