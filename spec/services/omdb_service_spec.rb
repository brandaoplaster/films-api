require 'spec_helper'
require 'json'
require './app/services/omdb_service'

describe 'Fetching movie title in the omdb API' do
  it 'must be able to search for a title in the omdb api' do
    
    response = OmdbService.new("Captain Marvel").perform

    expect(response['Title']).to eql("Captain Marvel")
  end
end