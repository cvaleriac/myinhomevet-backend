class Api::V1::ClinicsController < ApplicationController


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

    def clinic_params
        params.require(:clinic).permit(:name, :address)
    end
end