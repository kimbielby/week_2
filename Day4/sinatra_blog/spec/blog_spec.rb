require "rspec"
require_relative "../models/blog.rb"
require_relative "../models/post.rb"



RSpec.describe Blog do

  before :each do
    @blog = Blog.new
    post = Post.new("Title", Time.now, "Whatever")
    post2 = Post.new("Title2", Time.new(2016, 02, 20), "More stuff")
  end


  it "#latest_posts returns an array of posts" do 
  expect(@blog.posts).to eq([])

end
end
