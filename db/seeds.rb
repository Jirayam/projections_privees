puts "Destroy everything"
User.destroy_all
Booking.destroy_all
Viewing.destroy_all
puts "Finished"

puts "Create Users"
u1 = User.new(username: 'Nicolas', email: 'nicolas@nicolas.com', password: 'azerty', address: '8, cours de la Martinique, 33000 Bordeaux')
u1.remote_photo_url = "https://icdn5.digitaltrends.com/image/digitaltrends/home-theater-3000-k-1000x666.jpg"
u1.save!

u2 = User.new(username: 'Quentin', email: 'quentin@quentin.com', password: 'azerty', address: '5, place de la victoire, 33000 Bordeaux')
u2.remote_photo_url = "https://www.optoma.co.uk/uploads/CaseStudies/Images/cs642.jpg"
u2.save!

u3 = User.new(username: 'Lucile', email: 'alice@alice.com', password: 'azerty', address: '8, cours Victor Hugo, 33000 Bordeaux')
u3.remote_photo_url = "https://www.adept-is.com/hs-fs/hubfs/Project%20Listing%20Assets/8429-2.jpg?width=2000&height=1275&name=8429-2.jpg"
u3.save!

u4 = User.new(username: 'Anna', email: 'anna@anna.com', password: 'azerty', address: '10, cours de la somme, 33000 Bordeaux')
u4.remote_photo_url = "https://www.mon-home-cinema.info/wp-content/uploads/2017/09/home-cinema-21-729x389.jpg"
u4.save!

u5 = User.new(username: 'Thomas', email: 'lola@anna.com', password: 'azerty', address: '107, cours Balguerie, 33000 Bordeaux')
u5.remote_photo_url = "https://procella.audio/wp-content/uploads/2019/08/Procella-Invision-Reference-Home-Cinema-1.jpg"
u5.save!

u6 = User.new(username: 'Vincent', email: 'vincent@anna.com', password: 'azerty', address: '16, rue Bourbon, 33000 Bordeaux')
u6.remote_photo_url = "https://www.irishtimes.com/polopoly_fs/1.3368566.1516897051!/image/image.jpg_gen/derivatives/box_620_330/image.jpg"
u6.save!

u7 = User.new(username: 'Henri', email: 'henri@anna.com', password: 'azerty', address: '2, rue Archad, 33000 Bordeaux')
u7.remote_photo_url = "https://www.irishtimes.com/polopoly_fs/1.3368565!/image/image.jpg_gen/derivatives/landscape_620/image.jpg"
u7.save!

u8 = User.new(username: 'Tomy', email: 'tomy@gmail.com', password: 'azerty', address: '330, avenue thiers, 33000 Bordeaux')
u8.remote_photo_url = "https://i0.wp.com/www.acousticpixel.co.uk/wp-content/uploads/2018/11/DSF5839-exit-sockets-gone.jpg?resize=1024%2C669&ssl=1"
u8.save!

u9 = User.new(username: 'Benjamin', email: 'beja@anna.com', password: 'azerty', address: '84, rue de la rouselle, 33000 Bordeaux')
u9.remote_photo_url = "https://www.irishtimes.com/polopoly_fs/1.3368565!/image/image.jpg_gen/derivatives/landscape_620/image.jpg"
u9.save!

u10 = User.new(username: 'Audrey', email: 'audre@anna.com', password: 'azerty', address: '20, rue Emile Zola, 33000 Bordeaux')
u10.remote_photo_url = "https://icdn5.digitaltrends.com/image/digitaltrends/home-theater-3000-k-1000x666.jpg"
u10.save!

u11 = User.new(username: 'Adam', email: 'adma@anna.com', password: 'azerty', address: '7, rue de la croix blanche, 33000 Bordeaux')
u11.remote_photo_url = "https://www.installation-international.com/wp-content/uploads/2019/01/cornflake-home-cinema-01.jpg"
u11.save!

u12 = User.new(username: 'Rico', email: 'rico@anna.com', password: 'azerty', address: '19, cours du chapeau rouge, 33000 Bordeaux')
u12.remote_photo_url = "https://icdn5.digitaltrends.com/image/digitaltrends/home-theater-3000-k-1000x666.jpg"
u12.save!

u13 = User.new(username: 'Mariane', email: 'marianne@anna.com', password: 'azerty', address: '11, allée serr, 33000 Bordeaux')
u13.remote_photo_url = "https://icdn5.digitaltrends.com/image/digitaltrends/home-theater-3000-k-1000x666.jpg"
u13.save!

u14 = User.new(username: 'Jeanne', email: 'janne@anna.com', password: 'azerty', address: '4, rue claude bonnier, 33000 Bordeaux')
u14.remote_photo_url = "https://www.installation-international.com/wp-content/uploads/2019/01/cornflake-home-cinema-01.jpg"
u14.save!

u15 = User.new(username: 'Stephanie', email: 'stzplaje@anna.com', password: 'azerty', address: '40, cours Pasteur, 33000 Bordeaux')
u15.remote_photo_url = "https://cdn.mos.cms.futurecdn.net/QaMLVN3DLzXHdsn7pkqbYn-1440-80.jpg"
u15.save!

puts "Finished Users"

puts "Create Viewings"
v1 = Viewing.new(movie_info: "Batman Begins", date: Time.now, price: 20, capacity: 2)
v1.user = u1
v1.remote_photo_url = "https://upload.wikimedia.org/wikipedia/en/a/af/Batman_Begins_Poster.jpg"
v1.save!

v21 = Viewing.new(movie_info: "Le Roi Lion", date: Time.now, price: 5, capacity: 1)
v1.user = u1
v1.remote_photo_url = "https://upload.wikimedia.org/wikipedia/en/a/af/Batman_Begins_Poster.jpg"
v1.save!

v2 = Viewing.new(movie_info: "Dora", date: Time.now, price: 3, capacity: 5)
v2.user = u2
v2.remote_photo_url = "http://t3.gstatic.com/images?q=tbn:ANd9GcRwVpc3XI5AWKyp-gEpPDBqM5IH8U6q2C3-x53dMsadQKsUqIee"
v2.save!

v3 = Viewing.new(movie_info: "Fight Club", date: Time.now, price: 9, capacity: 5)
v3.user = u3
v3.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,666,1000_AL_.jpg"
v3.save!

v4 = Viewing.new(movie_info: "Truman Show", date: Time.now, price: 8, capacity: 3)
v4.user = u4
v4.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SY1000_SX674_AL_.jpg"
v4.save!

v5 = Viewing.new(movie_info: "Joker", date: Time.now, price: 10, capacity: 2)
v5.user = u5
v5.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
v5.save!

v6 = Viewing.new(movie_info: "Terminator: Dark Fate", date: Time.now, price: 7, capacity: 4)
v6.user = u6
v6.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BNzhlYjE5MjMtZDJmYy00MGZmLTgwN2MtZGM0NTk2ZTczNmU5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX640_CR0,0,640,999_AL_.jpg"
v6.save!

v7 = Viewing.new(movie_info: "Le Roi Lion", date: Time.now, price: 5, capacity: 5)
v7.user = u7
v7.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
v7.save!

v8 = Viewing.new(movie_info: "Star Wars: Skywalker", date: Time.now, price: 5, capacity: 5)
v8.user = u8
v8.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMDljNTQ5ODItZmQwMy00M2ExLTljOTQtZTVjNGE2NTg0NGIxXkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
v8.save!

v9 = Viewing.new(movie_info: "Once Upon a Time", date: Time.now, price: 7, capacity: 3)
v9.user = u9
v9.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
v9.save!

v10 = Viewing.new(movie_info: "Dolemite Is My Name", date: Time.now, price: 3, capacity: 5)
v10.user = u10
v10.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMzFiYWQxYzgtOThmYi00ZmIwLWFlZWMtMzk2NTI2YTYzMjkyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
v10.save!

v11 = Viewing.new(movie_info: "El Camino", date: Time.now, price: 2, capacity: 9)
v11.user = u11
v11.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BNjk4MzVlM2UtZGM0ZC00M2M1LThkMWEtZjUyN2U2ZTc0NmM5XkEyXkFqcGdeQXVyOTAzMTc2MjA@._V1_SY1000_SX800_AL_.jpg"
v11.save!

v12 = Viewing.new(movie_info: "John Wick Parabellum", date: Time.now, price: 3, capacity: 7)
v12.user = u12
v12.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMDg2YzI0ODctYjliMy00NTU0LTkxODYtYTNkNjQwMzVmOTcxXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SY1000_CR0,0,648,1000_AL_.jpg"
v12.save!

v14 = Viewing.new(movie_info: "The Irishman", date: Time.now, price: 6, capacity: 4)
v14.user = u11
v14.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMGUyM2ZiZmUtMWY0OC00NTQ4LThkOGUtNjY2NjkzMDJiMWMwXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_SY1000_CR0,0,682,1000_AL_.jpg"
v14.save!

v15 = Viewing.new(movie_info: "Last Christmas", date: Time.now, price: 3, capacity: 3)
v15.user = u9
v15.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BNTQ4ZmY0NjgtYzVhNy00NzhiLTk3YTYtNzM1MTdjM2VhZDA3XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
v15.save!

v16 = Viewing.new(movie_info: "La Belle et le Clochard", date: Time.now, price: 4, capacity: 4)
v16.user = u8
v16.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BM2U3ZDBkYWUtNDY3Ny00OTliLTgxNTAtY2QwZTQxMmEwOTQ1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
v16.save!

v17 = Viewing.new(movie_info: "La Reine des Neiges II", date: Time.now, price: 5, capacity: 4)
v17.user = u7
v17.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMjA0YjYyZGMtN2U0Ni00YmY4LWJkZTItYTMyMjY3NGYyMTJkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_SX675_AL_.jpg"
v17.save!

v18 = Viewing.new(movie_info: "Retour à Zombieland", date: Time.now, price: 6, capacity: 5)
v18.user = u6
v18.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BYjcwNjZhNGYtOGNlNy00NGI3LTlmODMtMGZlMjA3YjA0Njg0XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SY1000_SX675_AL_.jpg"
v18.save!

v19 = Viewing.new(movie_info: "Ça: Chapitre 2", date: Time.now, price: 7, capacity: 4)
v19.user = u5
v19.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BYTJlNjlkZTktNjEwOS00NzI5LTlkNDAtZmEwZDFmYmM2MjU2XkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
v19.save!

v20 = Viewing.new(movie_info: "Mourir peut attendre", date: Time.now, price: 8, capacity: 2)
v20.user = u4
v20.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BNTkyZWFjY2YtMTg1ZC00YThjLWE4YTEtZjFjOTJiMTRlYjg3XkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_SY1000_CR0,0,675,1000_AL_.jpg"
v20.save!

v22 = Viewing.new(movie_info: "Le Roi Lion", date: Time.now, price: 5, capacity: 2)
v22.user = u1
v22.remote_photo_url = "https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg"
v22.save!

puts "Finished Viewings"

puts "Create Bookings"
b1 = Booking.new(progress: "accepted")
b1.user = u1
b1.viewing = v22
b1.save!

b2 = Booking.new(progress: "accepted")
b2.user = u1
b2.viewing = v22
b2.save!

b3 = Booking.new(progress: "pending")
b3.user = u2
b3.viewing = v2
b3.save!

b4 = Booking.new(progress: "accepted")
b4.user = u2
b4.viewing = v1
b4.save!

b = Booking.new(progress: "pending")
b.user = u3
b.viewing = v2
b.save!

b = Booking.new(progress: "accepted")
b.user = u3
b.viewing = v3
b.save!

b = Booking.new(progress: "accepted")
b.user = u3
b.viewing = v3
b.save!

b = Booking.new(progress: "pending")
b.user = u4
b.viewing = v3
b.save!

b = Booking.new(progress: "accepted")
b.user = u5
b.viewing = v4
b.save!

b = Booking.new(progress: "pending")
b.user = u6
b.viewing = v4
b.save!

b = Booking.new(progress: "accepted")
b.user = u7
b.viewing = v4
b.save!

b = Booking.new(progress: "accepted")
b.user = u8
b.viewing = v5
b.save!

b = Booking.new(progress: "pending")
b.user = u8
b.viewing = v6
b.save!

b = Booking.new(progress: "accepted")
b.user = u8
b.viewing = v6
b.save!


b = Booking.new(progress: "pending")
b.user = u8
b.viewing = v6
b.save!

b = Booking.new(progress: "accepted")
b.user = u8
b.viewing = v7
b.save!

b = Booking.new(progress: "pending")
b.user = u8
b.viewing = v7
b.save!

b = Booking.new(progress: "accepted")
b.user = u9
b.viewing = v8
b.save!

b = Booking.new(progress: "pending")
b.user = u9
b.viewing = v8
b.save!

b = Booking.new(progress: "accepted")
b.user = u9
b.viewing = v9
b.save!

b = Booking.new(progress: "pending")
b.user = u9
b.viewing = v9
b.save!

b = Booking.new(progress: "accepted")
b.user = u9
b.viewing = v9
b.save!

b = Booking.new(progress: "pending")
b.user = u1
b.viewing = v10
b.save!

b = Booking.new(progress: "accepted")
b.user = u1
b.viewing = v11
b.save!

b = Booking.new(progress: "pending")
b.user = u1
b.viewing = v11
b.save!

b = Booking.new(progress: "pending")
b.user = u1
b.viewing = v11
b.save!

b = Booking.new(progress: "pending")
b.user = u1
b.viewing = v11
b.save!

b = Booking.new(progress: "accepted")
b.user = u1
b.viewing = v12
b.save!

b = Booking.new(progress: "pending")
b.user = u2
b.viewing = v12
b.save!

b = Booking.new(progress: "pending")
b.user = u2
b.viewing = v14
b.save!
puts "Finished Bookings"
