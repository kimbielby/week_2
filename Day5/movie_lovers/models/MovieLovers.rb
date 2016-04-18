require "imdb"

class Movies
#Think of it in chronological order:
  def ask_user_input
    puts "Choose a film name"
    word = gets.chomp
    search = Imdb::Search.new word
    @search_result = search.movies #movies is the method inside the Imdb gem
  end
#After we have input from user we apply the first def and define the range
  def search_movies
    ask_user_input
    @search_result[0..8]
  end
end

search = Movies.new
puts search.search_movies #We want to see the results, so we call
