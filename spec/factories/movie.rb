FactoryBot.define do
  factory :movie do
    title           { FFaker::Movie.title }
    genre           { FFaker::Music.genre }
    release_year    { FFaker::Vehicle.year }
    director        { FFaker::Internet.user_name }
    actors          { FFaker::Internet.user_name }
    cover           { FFaker::Book.cover }
  end
end