class Api::V1::PetsController < ApplicationController

    def index 
        @pets = Pet.all
        render json: @pets
    end

    def create
        @pet = Pet.new(pet_params)
        if @pet.save 
            render json: @pet
        else
            render json:{error:'Error creating pet'}
        end
    end

    def show 
        @pet = Pet.find(params[:id])
        render json: @pet
    end

    def destroy 
        @pet = Pet.find(params[:id])
        @pet.destroy
    end


    private

    def pet_params
        params.require(:pet).permit(:name, :species, :age)
    end


    
end