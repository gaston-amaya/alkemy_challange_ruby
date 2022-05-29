class CharactersController < ApplicationController
   before_action :current_character, only: [:show, :edit, :update, :destroy]
        before_action :authenticate_user!
    
    
        def index 
            @characters = Character.all
            render json: @characters
         end
         
         def show
             
             render json: @character, serializer: CharacterDetailSerializer
         end
     
         def new
             @character= Character.new
     
         end
     
         def create
             @character = Character.create(character_params)
            
                @character.save
     
             redirect_to characters_path
     
         end
     
         def edit
             
         end
     
         def update
         
             
     
             @character.update(character_params)
         
         end
     
         def destroy
             
             
             @character.destroy
         
         end
     
         private  
     
         def character_params
             params.require(:character).permit(:picture, :name, :age, :weight, :story, :movie_id)
         end
    
         def current_character
            @character = Character.find(params[:id])
         end
    
    end

