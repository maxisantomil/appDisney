class CharactersController < ApplicationController

    def index 
        @characters= Character.all;
    end

    def show
        @character = Character.find(params[:id])
    end

    def new
        @character =   Character.new
    end

    def create 
        @character= Character.new(character_params)
        if @character.save
            redirect_to characters_path #:status => 201
        else
            render :new, :status=> 401 
        end
    end

    def edit
        @character= Character.find(params[:id])
        #render json:@character
    end

    def update
        @character= Character.find(params[:id])
        if @character.update(character_params)
            redirect_to characters_path #:status => 201
        else
            render :edit
        end
    end

    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        redirect_to characters_path
    end

    #creo metodo para pasarle los parametros 
    private    
    def character_params
        params.require(:character).permit(:url_imagen, :nombre, :edad, :peso, :historia)
    end
   
end
