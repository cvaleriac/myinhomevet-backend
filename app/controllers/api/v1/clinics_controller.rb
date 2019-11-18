class Api::V1::ClinicsController < ApplicationController

    before_action :set_user


    def index 
        @clinics = user.clinics
        render json: @clinics
    end

    def create
        @clinic = @user.clinics.build(clinic_params)
        if @clinic.save 
            render json: @clinic
        else
            render json:{error:'Error creating clinic'}
        end
    end

    def show 
        @clinic = Clinic.find(params[:id])
        render json: @clinic
    end

    def destroy 
        @clinic = Clinic.find(params[:id])
        @clinic.destroy
    end


    private

    def set_user
        @user = User.find(params[:user_id])
    end

    def clinic_params
        params.require(:clinic).permit(:name, :address, :services, :user_id)
    end
end