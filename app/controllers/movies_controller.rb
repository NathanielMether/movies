class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    movie_param = params[:id]
    @movie = Movie.find(movie_param)
  end

  def new
    @movie = Movie.new
  end
  
  def create
    movie_params = params.require(:movie).permit(:title, :description, :year_released, :genre)

    @new_movie = Movie.new(movie_params)
      if @new_movie.save
        redirect_to "movies/#{new_movie.id}"
      else
        render :new
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
