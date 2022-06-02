class MovieCharacterController < ApplicationController
  before_action :current_movie_character, only: %i[show edit update destroy]
  before_action :authenticate_user!

  has_scope :by_movie_id

  def index
    @movie_characters = apply_scopes(MovieCharacter).all
    render json: @movie_characters
  end

  def show
    render json: @movie_characters
  end

  def new
    @movie_characters = MovieCharacter.new
  end

  def create
    @movie_characters = MovieCharacter.create(movie_character_params)
    if @movie_characters.valid?
    @movie_characters.save
    flash[:notice] = 'The movie/character has been added successfully!'
    else
    flash[:alert] = @movie_characters.errors.full_messages
    end
  end

  def edit; end

  def update
    @movie_characters.update(movie_character_params)
    if @movie_characters.valid?
    @movie_characters.save
    flash[:notice] = 'The movie/character has been updated successfully!'
    else
    flash[:alert] = @movie_characters.errors.full_messages
    end
  end

  def destroy
    @movie_characters.destroy
    flash[:notice] = 'The movie/character has been deleted successfully!'

  end

  private

  def movie_character_params
    params.require(:movie_character).permit(:movie_id, :character_id)
  end

  def current_movie_character
    @movie_characters = MovieCharacter.find(params[:id])
  end
end
