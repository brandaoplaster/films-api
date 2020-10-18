class Api::V1::MoviesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @movies =  Movie.all
    render json: @movies
  end

  def create
    
  end

  private

  def movie_params
    
  end
end
