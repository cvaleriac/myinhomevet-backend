class Api::V1::PetsController < ApplicationController

    before_action :set_user

    def index 
        @pets = user.pets
        render json: @pets
    end

    def create
        @pet = @user.pets.build(pet_params)
        if @pet.save 
            render json: @user
        else
            render json:{error:'Error creating pet'}
        end
    end

    def show 
        @pet = Pet.find(params[:id])
        render json: @pet
    end

    def destroy 

        @pet = Pet.find(params["id"])
        @user = User.find(@pet.user_id)
        @pet.destroy
        render json: @user
    end
    

    private

    def set_user
        @user = User.find(params[:user_id])
    end

    def pet_params
        params.require(:pet).permit(:name, :species, :age, :user_id)
    end


    
end