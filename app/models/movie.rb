class Movie < ApplicationRecord
  validates :title, :genre, :release_year, :director, :actors, :cover, presence: true
end
