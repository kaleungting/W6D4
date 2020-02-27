# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([{username: 'Axl Rose'}, {username: 'Slash'}, {username: 'Duff McKagan'}, {username: 'Izzy Stradlin'}, {username: 'Steven Adler'}])

ac1 = ArtworkCollection.create!(user_id: 1, collection_name: 'Best Hits')
ac2 = ArtworkCollection.create!(user_id: 2, collection_name: 'Top 30')
ac3 = ArtworkCollection.create!(user_id: 1, collection_name: 'Driving Music')
ac4 = ArtworkCollection.create!(user_id: 3, collection_name: 'Dust-collector')

a1 = Artwork.create!(title: 'Appetite for Destruction', image_url: 'https://images-na.ssl-images-amazon.com/images/I/71H9ZR6EGFL._SL1400_.jpg', artist_id: 1, artwork_collection_id: 1) 
a2 = Artwork.create!(title: 'Lies', image_url:'https://images-na.ssl-images-amazon.com/images/I/51AlEFbhCnL.jpg', artist_id: 2, artwork_collection_id: 2)
a3 = Artwork.create!(title: 'Use Your Illusions', image_url: 'https://images-na.ssl-images-amazon.com/images/I/617O30gSliL.jpg', artist_id: 1, artwork_collection_id: 1)
a4 =  Artwork.create!(title: 'Use Your Illusions II', image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/38/GunsnRosesUseYourIllusionII.jpg/220px-GunsnRosesUseYourIllusionII.jpg', artist_id: 3, artwork_collection_id: 4) 
a5 = Artwork.create!(title: 'Spaghetti Incident', image_url: 'https://discogs-images/R-5531452-1395776522-2381.jpeg.jpg', artist_id: 3, artwork_collection_id: 2)
a6 = Artwork.create!(title: 'Welcome To The Black Parade', image_url: 'https://discogs-images/R-5531452-1395776522-2381.jpeg.jpg', artist_id: 3, artwork_collection_id: 1)
a7 = Artwork.create!(title: 'Three Cheers for Sweet Revenge', image_url: 'https://discogs-images/R-5531452-1395776522-2381.jpeg.jpg', artist_id: 2, artwork_collection_id: 3)
a8 = Artwork.create!(title: 'Ocean Avenue', image_url: 'https://discogs-images/R-5531452-1395776522-2381.jpeg.jpg', artist_id: 5, artwork_collection_id: 4)

ArtworkShare.create!([{artwork_id: 1, viewer_id: 2}, {artwork_id: 1, viewer_id: 3}, {artwork_id: 2, viewer_id: 2}, {artwork_id: 3, viewer_id: 4}, {artwork_id: 1, viewer_id: 4}, {artwork_id: 1, viewer_id: 5}])

c1 = Comment.create!(user_id: 1, artwork_id: 1, body: "Appetite is the best album ever!!")
c2 = Comment.create!(user_id: 1, artwork_id: 2, body: "I've never heard of Lies until today")
c3 = Comment.create!(user_id: 2, artwork_id: 1, body: "I also think Appetite is amazing")
c4 = Comment.create!(user_id: 3, artwork_id: 4, body: "I love the song November Rain on this album")
c5 = Comment.create!(user_id: 3, artwork_id: 3, body: "So G00D!!!!")
c6 = Comment.create!(user_id: 4, artwork_id: 5, body: "TERRRIBLEEEEEEEEEE")
c7 = Comment.create!(user_id: 5, artwork_id: 1, body: "Sweeeeet child o' mineeee")

l1 = Like.create!(user_id: 1, likeable_type: "Artwork", likeable_id: 2)
l2 = Like.create!(user_id: 1, likeable_type: "Artwork", likeable_id: 3)
l3 = Like.create!(user_id: 2, likeable_type: "Artwork", likeable_id: 1)
l4 = Like.create!(user_id: 2, likeable_type: "Artwork", likeable_id: 5)
l5 = Like.create!(user_id: 3, likeable_type: "Artwork", likeable_id: 1)
l6 = Like.create!(user_id: 3, likeable_type: "Artwork", likeable_id: 4)
l7 = Like.create!(user_id: 4, likeable_type: "Artwork", likeable_id: 1)
l8 = Like.create!(user_id: 4, likeable_type: "Artwork", likeable_id: 4)
l9 = Like.create!(user_id: 1, likeable_type: "Comment", likeable_id: 1)
l10 = Like.create!(user_id: 2, likeable_type: "Comment", likeable_id: 1)
l11 = Like.create!(user_id: 3, likeable_type: "Comment", likeable_id: 1)
l12 = Like.create!(user_id: 3, likeable_type: "Comment", likeable_id: 5)
l13 = Like.create!(user_id: 1, likeable_type: "Comment", likeable_id: 5)
l14 = Like.create!(user_id: 4, likeable_type: "Comment", likeable_id: 7)
l15 = Like.create!(user_id: 5, likeable_type: "Comment", likeable_id: 7)
