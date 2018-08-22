class PlacesController < ApplicationController
    before_action :set_place, only: [:show, :update, :destroy]

    def index
      @places = Place.all
      json_response(@places)
    end
  
    def create
      @place = Place.create!(place_params)
      json_response(@place, :created)
    end
  
    def show
      json_response(@place)
    end
  
    def update
      @place.update(place_params)
      head :no_content
    end
  
    def destroy
      @place.destroy
      head :no_content
    end
  
    private
  
    def place_params
      # whitelist params
      params.permit(:nombre, :direccion)
    end
  
    def set_place
      @place = Place.find(params[:id])
    end
end
