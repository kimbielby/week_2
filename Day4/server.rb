require "sinatra"
# require "sinatra/reloader"
# require "pry"

enable:sessions

get "/" do
  "hello"
end

get "/real_page" do
  "the other page"
end

get "/hi"  do
  redirect "real_page"
end
