class MovieJob < ApplicationJob
  queue_as :film

  def perform(list_titles)
    list_titles.map do |title|
      movie = OmdbService.new(title['title']).perform
      
      # Title Year Genre Director Actors Poster
      Movie.find_or_create_by(
        title:        movie['Title'],
        genre:        movie['Year'],
        release_year: movie['Genre'],
        director:     movie['Director'],
        actors:       movie['Actors'], 
        cover:        movie['Poster']
      )
    end
  end
end