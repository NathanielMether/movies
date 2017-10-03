class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    movie_param = params[:id]
    @movie = Movie.find(movie_param)
  end
end
