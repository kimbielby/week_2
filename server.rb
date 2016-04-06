require "sinatra"
require "sinatra/reloader"

get "/" do 
	"My first website with sinatra"
end

get "/hi" do 
	@greetings = "Hello"
	erb(:hipage)
end 

get "/author" do 
	erb(:author)
end

get "/time" do
	t = Time.now()
	@my_time = t
	erb(:time)
end


get "/pizza" do
	@ingredients = ["tomato", "mozzarela"]
	erb(:pizza)
end

get "/image" do 
	erb(:image)
end
# "
# 	<h1>About me:</h1> 
# 	<p>
# 	<b>I</b> am <b>me</b> and <b>me</b> I <b>am</b>
# 	</p>"