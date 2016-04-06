class Lexiconomitron
	attr_reader :lexi, :without_t
	def eat_t(lexi)

		@lexi = lexi
		@without_t = @lexi.tr("t""T", "")
		@without_t
		
	end

	def shazam

		@array = @without_t.split(" ")
		@array.each do |word| 
			word.to_s.reverse! 
		end 
		@array 
		
	end

	def oompa_loompa
		@array = @without_t.split(" ")
		@array.each do |measure|
			if measure.length >= 3
				@array.delete(measure)
				
			end
			
		end
		
	end
end

# attempt = Lexiconomitron.new
# puts attempt.eat_t("great scott!")
# p attempt.shazam

# attempt = Lexiconomitron.new
# #p attempt.shazam
# puts attempt.eat_t("great for scott!")
# p attempt.oompa_loompa



