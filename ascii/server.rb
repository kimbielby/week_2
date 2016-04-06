require "sinatra"
require "sinatra/reloader"
require "artii"



get "/ascii/:word/?:font?" do
 word = params[:word]
 font = params[:font]
 
 if font == nil
 	font = "avatar"
 end
 a = Artii::Base.new :font => font 

 @art_word = a.asciify(word)
 erb( :ascii)

end