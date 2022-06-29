class CharactersController < ApplicationController
  before_action :current_character, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  has_scope :by_name
  has_scope :by_weight
  has_scope :by_age
  has_scope :by_movie

  def index
    @characters = apply_scopes(Character).all.order(created_at: :asc)
    render json: @characters
  end

  def show
    render json: @character, serializer: CharacterDetailSerializer
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.create!(character_params)
    if @character.valid?
      @character.save
      flash[:notice] = "The character has been added successfully!"
      render json: @character, status: :created
    else
      flash[:alert] = @character.errors.full_messages
    end
  end

  def edit
  end

  def update
    @character.update!(character_params)
    if @character.valid?
      @character.save
      flash[:notice] = "The character has been updated successfully!"
      render json: @character
    else
      flash[:alert] = @character.errors.full_messages
    end
  end

  def destroy
    @character.destroy
    flash[:notice] = "The character has been deleted successfully!"
  end

  private

  def character_params
    params.require(:character).permit(:picture, :name, :age, :weight, :story)
  end

  def current_character
    @character = Character.find(params[:id])
  end
end
