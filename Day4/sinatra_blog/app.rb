require "sinatra"
require "sinatra/reloader"
require "pry"

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

get "/post_details/:index" do
  @posts = blog.latest_posts
  @index = params[:index].to_i
  erb(:post_details)
end

get "/new_post" do
  erb(:new_post)
  #show the form
end

post "/post_submission" do
  @title = params["Title"]
  @text = params["Text"]

  blog.add_post Post.new(@title, Time.now.strftime("%Y %m %d"), @text)

  redirect to ("/posts")
  #receive the form submission
end

#do buttons for title and post as time will be stamped anyway
