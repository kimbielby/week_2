require "sinatra"
require "sinatra/reloader"
enable:sessions

get "/profile_page" do
  session[:saved_value]
  erb(:profile)
end

post "/profile_page" do
  
end
