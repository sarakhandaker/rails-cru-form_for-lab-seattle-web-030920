class GenresController < ApplicationController
    def show
        @genre=Genre.find(params[:id])
    end
    def create
        @genre=Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end
    def new
        @genre=Genre.new
    end
    def update
        @genre=Genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to genre_path(@genre)

    end
    def edit
        @genre=Genre.find(params[:id])
    end
end

private
 
def genre_params
  params.require(:genre).permit(:name)
end