require 'rails_helper'

RSpec.describe Movie, type: :model do

  context "With valid params" do

    before(:each) do
      @movie = create(:movie)
    end
    
    it "is valid with valid attributes" do
      expect(@movie).to be_valid
    end
  end

  context "With invalid params" do

    it "is not valid without a title" do
      movie = build(:movie, title: nil)
      expect(movie).to_not be_valid
    end
  
    it "is not valid without a genre" do
      movie = build(:movie, genre: nil)
      expect(movie).to_not be_valid
    end
  
    it "is not valid without a release_year" do
      movie = build(:movie, release_year: nil)
      expect(movie).to_not be_valid
    end
  
    it "is not valid without a director" do
      movie = build(:movie, director: nil)
      expect(movie).to_not be_valid
    end
  
    it "is not valid without a actors" do
      movie = build(:movie, actors: nil)
      expect(movie).to_not be_valid
    end
  
    it "is not valid without a cover" do
      movie = build(:movie, cover: nil)
      expect(movie).to_not be_valid
    end
  end
end
