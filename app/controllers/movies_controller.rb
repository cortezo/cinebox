class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      flash[:success] = "Movie successfully created."
      redirect_to root_path
    else
      flash[:error] = "Something went wrong."
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :file_loc, :genre_id)
  end
end