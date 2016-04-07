require "sinatra"
require "sinatra/reloader"

require_relative "models/post.rb"
require_relative "models/blog.rb"

post = Post.new("Title", Time.now.strftime("%Y %m %d"), "Whatever")
post2 = Post.new("Title2", Time.new.strftime("2016 04 01"), "More stuff")
post3 = Post.new("Title3", Time.now.strftime("%Y %m %d"), "Everything all the time")

blog = Blog.new
blog.add_post(post)
blog.add_post(post2)
blog.add_post(post3)

get "/posts" do
  @posts = blog.latest_posts
  erb(:current_posts)
end
