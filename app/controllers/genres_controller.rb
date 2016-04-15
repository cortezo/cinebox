class GenresController < ApplicationController
  def index

  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)

    if @genre.save
      flash[:success] = "Genre created successfully."
      redirect_to root_path
    else
      flash[:error] = "Something went wrong."
      render :new
    end
  end

  def show

  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end