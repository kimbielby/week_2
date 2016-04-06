require "rspec"
require "./Lexiconomitron"

RSpec.describe Lexiconomitron do

	before :each do 
		@lexi = Lexiconomitron.new 
	end
 
  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")

    end 
   

     it "reverses the letters in each word" do
			expect(@lexi.eat_t("great scott!")).to eq("grea sco!")      
			expect(@lexi.shazam).to eq(["aerg", "!ocs"])
    end

    it "reverses the letters in each word" do
			expect(@lexi.eat_t("great for scott!")).to eq("grea for sco!")      
			expect(@lexi.oompa_loompa).to eq(["for"])
    end

  end
end
