class CampersController < ApplicationController

    def index
        render json: Camper.all
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, serializer: CamperWithActivitySerializer
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private

    def camper_params
        params.permit([:name, :age])
    end

    def respond_when_not_found
        render json: { error: "Camper not found"}, status: :not_found
    end
end
