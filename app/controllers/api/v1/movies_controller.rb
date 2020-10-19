class Api::V1::MoviesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @movies =  Movie.all
    render json: @movies
  end

  def create
    if valid_list_movie(movie_params["movie"])
      MovieJob.perform_later(movie_params['movie'])

      render json: "Your title list is being processed", status: :ok
    else
      render json: "Empty or out-of-format title list", status: :unprocessable_entity
    end
  end

  private

  def movie_params
    params.permit({ movie: [:title] })
  end

  def valid_list_movie(list_movie)
    return false if list_movie.to_a.empty?
    count_key = 0
    list_movie.map { |item| count_key += 1 if item.include?(:title) }
    count_key == list_movie.count
  end
end
