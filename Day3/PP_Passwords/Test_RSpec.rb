require "pry"
require "rspec"
require "./checker"

RSpec.describe Checker do
  before :each do
    @checker = Checker.new("ironhack@gmail.com", "1@ironhack")
  end

describe "7characters" do
  it "checks if characters are more than 7" do
    expect(@checker.charactercounter).to eq(true)
  end
end

describe "lenusy" do
  it "checks if there is at least one letter, one number and one special character" do
    expect(@checker.lenusy).to eq(true)
  end
end

describe "cases" do
  it "checks if there is at least one upper case and one lower case letter" do
    expect(@checker.cases).to eq(false)
  end
end

describe "dominate" do
  it "checks if the password is included " do
    expect(@checker.dominate).to eq(true)
  end
end
end
