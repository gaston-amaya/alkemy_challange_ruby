class MoviesController < ApplicationController
    before_action :current_movie, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    has_scope :by_title
    has_scope :by_genre
    has_scope :by_order
    has_scope :by_movie_id
    
    
        def index 
            @movie = apply_scopes(Movie).all
            render json: @movie
        end

        def show
            render json: @movie, serializer: MovieDetailSerializer
        end

        def new
             @movie = Movie.new
     
         end
     
         def create
             @movie = Movie.create(movie_params)
             
                if @movie.valid?
                    @movie.save
                    flash[:notice] = 'The movie has been added successfully!'
                    
                    redirect_to movies_path
                else
                    flash[:alert] = @movie.errors.full_messages
                    
                end
            end
     
         def edit
             
         end
     
         def update
         @movie.update(movie_params)
         if @movie.valid?
            @movie.save
            flash[:notice] = 'The movie has been updated successfully!'
            
        else
            flash[:alert] = @movie.errors.full_messages
        end

         
         end
     
         def destroy
             @movie.destroy
             flash[:notice] = 'The movie has been deleted successfully!'
         
         end
     
         private

      
     
         def movie_params
             params.require(:movie).permit(:picture, :title, :rating, :genre_id)
         end
    
         def current_movie
            @movie = Movie.find(params[:id])
         end
    
    end

