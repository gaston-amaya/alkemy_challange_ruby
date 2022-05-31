class GenresController < ApplicationController
  

  include ActionController::Helpers
  include ActionController::Flash

  before_action :current_genre, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @genres = Genre.all
    render json: @genres
  end

  def show
    render json: @genre, serializer: GenreDetailSerializer
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    if @genre.valid?
      @genre.save
      flash[:notice] = 'The genre has been added successfully!'
      
      redirect_to genres_path
    else
      flash[:alert] = @genre.errors.full_messages
    end
    
  end

  def edit; end

  def update
    @genre.update(genre_params)
  end

  def destroy
    @genre.destroy
  end

  private

  def genre_params
    params.require(:genre).permit(:picture, :name)
  end

  def current_genre
    @genre = Genre.find(params[:id])
  end
end
