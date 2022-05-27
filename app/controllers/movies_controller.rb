class MoviesController < ApplicationController
    
        before_action :current_movie, only: [:show, :edit, :update, :destroy]
        #before_action :authenticate_user!
    
    
        def index 
            @movies = Movie.all
            render json: @movies 
         end
         
         def show
             
             render json: @movie, serializer: MovieDetailSerializer
         end
     
         def new
             @movie = Movie.new
     
         end
     
         def create
             @movie = Movie.create(movie_params)
             
                if @movie.save
     
             redirect_to movies_path
                end
     
         end
     
         def edit
             
         end
     
         def update
         
             
     
             @movie.update(movie_params)
         
         end
     
         def destroy
             
             
             @movie.destroy
         
         end
     
         private  
     
         def movie_params
             params.require(:movie).permit(:picture, :title, :rating, :genre_id)
         end
    
         def current_movie
            @movie = Movie.find(params[:id])
         end
    
    end

