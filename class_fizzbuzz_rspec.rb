require "rspec"
require "./class_FizzBuzz"

RSpec.describe "fizzbuzz result" do 

    before :each do 
        @fizzbuzz = FizzBuzz.new 
    end

    it "should return Fizz for a multiple of 3" do
        expect(@fizzbuzz.answer(3)).to eq("Fizz")
    end

    it "should return Buzz for a multiple of 5" do
        expect(@fizzbuzz.answer(5)).to eq("Fizz")
    end

    #it "should return FizzBuzz for a multiple of both 3 and 5" do
     #   expect(@fizzbuzz.answer(5)).to eq("Fizz")
    #end
end