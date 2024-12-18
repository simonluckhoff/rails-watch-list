# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# require "open-uri"

Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
Movie.create(title: "Fall Guy", overview: "After leaving the business one year earlier, battle-scarred stuntman Colt Seavers springs back into action when the star of a big studio movie suddenly disappears.", poster_url: "https://res-console.cloudinary.com/difzvuhvh/thumbnails/v1/image/upload/v1733422327/VGhlRmFsbEd1eV9Qb3N0ZXJBcnRfdm1kaXRm/preview", rating: 9.0)

# file = URI.open("https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg")
# movie = Movie.new(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", rating: 7.9)
# movie.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpeg")
# movie.save



# file = URI.open("https://asset.cloudinary.com/difzvuhvh/268b240e7e34e0ba84b02d220eb51a96")
# movie = Movie.new(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", rating: 7.9)
# movie.photo.attach(io: file, filename: "image.jpg", content_type: "image/jpeg")
# movie.save


# require "open-uri"

# file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg").open
# movie = Movie.new(title: "NES", overview: "A great console")
# movie.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# movie.save
