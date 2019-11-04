class Api::V1::UsersController < ApplicationController

    
    def create
        @user = User.new(user_params)
        if @user.save 
            render json: @account
        else
            render json:{error:'Error creating user'}
        end
    end

    def show 
        @user = User.find(params[:id])
        render json: @account
    end

    def destroy 
        @user = User.find(params[:id])
        @account.destroy
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end


    
end
