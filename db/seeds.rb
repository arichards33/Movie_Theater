require 'open-uri'


# Movie.delete_all
#Showtime.delete_all


# movies = eval(File.read("db/movies.rb"))
times = eval(File.read("db/showtimes.rb"))

# movies.each do |movie_showing|
#   movie = Movie.new
#   movie.title = movie_showing["title"]
#   movie.movie_poster = movie_showing["movie_poster"]
#   movie.description = movie_showing["description"]
#   movie.rating = movie_showing["rating"]
#   movie.showtime = movie_showing["showtime"]
#
#   movie.save
# end

times.each do |showtimes|

  movie_time = Showtime.new
  movie_time.start_time = showtimes["start_time"]
  movie_time.movie_id = showtimes["movie_id"]
  movie_time.seats = showtimes["seats"]

  movie_time.save!
end

print "There are now #{Movie.count} movies in the database.\n"
print "There are now #{Showtime.count} times in the database.\n"
