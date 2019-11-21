puts "Destroy everything"
User.destroy_all
Booking.destroy_all
Viewing.destroy_all
puts "Finished"

puts "Create Users"
u1 = User.new(username: 'bob', email: 'bob@bob.com', password: 'azerty', address: '8, cours de la Martinique, 33000 Bordeaux')
u1.remote_photo_url = "https://icdn5.digitaltrends.com/image/digitaltrends/home-theater-3000-k-1000x666.jpg"
u1.save!

u2 = User.new(username: 'michel', email: 'michel@michel.com', password: 'azerty', address: '5, place de la victoire, 33000 Bordeaux')
u2.remote_photo_url = "https://www.optoma.co.uk/uploads/CaseStudies/Images/cs642.jpg"
u2.save!

u3 = User.new(username: 'alice', email: 'alice@alice.com', password: 'azerty', address: '8, cours Victor Hugo, 33000 Bordeaux')
u3.remote_photo_url = "https://www.adept-is.com/hs-fs/hubfs/Project%20Listing%20Assets/8429-2.jpg?width=2000&height=1275&name=8429-2.jpg"
u3.save!
puts "Finished Users"

puts "Create Viewings"
v1 = Viewing.new(movie_info: "Batman Begins", date: Time.now, price: 20, capacity: 2)
v1.user = u1
v1.remote_photo_url = "https://upload.wikimedia.org/wikipedia/en/a/af/Batman_Begins_Poster.jpg"
v1.save!

v2 = Viewing.new(movie_info: "Dora", date: Time.now, price: 20, capacity: 2)
v2.user = u1
v2.remote_photo_url = "http://t3.gstatic.com/images?q=tbn:ANd9GcRwVpc3XI5AWKyp-gEpPDBqM5IH8U6q2C3-x53dMsadQKsUqIee"
v2.save!

v3 = Viewing.new(movie_info: "Fight Club", date: Time.now, price: 20, capacity: 2)
v3.user = u1
v3.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,666,1000_AL_.jpg"
v3.save!

v4 = Viewing.new(movie_info: "Truman Show", date: Time.now, price: 20, capacity: 2)
v4.user = u1
v4.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SY1000_SX674_AL_.jpg"
v4.save!
puts "Finished Viewings"

puts "Create Bookings"
b1 = Booking.new(progress: "pending")
b1.user = u3
b1.viewing = v2
b1.save!

b2 = Booking.new(progress: "accepted")
b2.user = u3
b2.viewing = v4
b2.save!

b3 = Booking.new(progress: "pending")
b3.user = u2
b3.viewing = v2
b3.save!

b4 = Booking.new(progress: "accepted")
b4.user = u2
b4.viewing = v1
b4.save!

b5 = Booking.new(progress: "pending")
b5.user = u2
b5.viewing = v3
b5.save!
puts "Finished Bookings"
