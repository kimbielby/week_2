require "imdb"
require "sinatra"
require "sinatra/reloader"
require "pry"
require_relative "models/movielovers.rb"

movies = Movies.new
movies.search_movies

get "/search" do
  @searching = movies.search_movies
  erb(:search_page)
end

# post "/results"
#
# end
#
# get
# erb(:display_page)
# end









#some javascript

# For correct movie:
# <img src="[]" onClick="alert("yay")" />
#
# For incorrect movie:
# <img src="[]" onClick="alert("nay")" />
