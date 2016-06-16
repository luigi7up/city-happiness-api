module Api::V1
  class HappinessesController < ApplicationController
    before_action :set_happiness, only: [:show]

    # GET /happinesses
    def index
      @happinesses = Happiness.all

      render json: @happinesses
    end

    # GET /happinesses/1
    def show
      render json: @happiness
    end

    # POST /happinesses
    def create
      @happiness = Happiness.new(happiness_params)

      if @happiness.save
        render json: @happiness, status: :created, location: @happiness
      else
        render json: @happiness.errors, status: :unprocessable_entity
      end
    end

    def top_happiest_cities
      render json: Happiness.top_happiest_cities
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_happiness
      @happiness = Happiness.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def happiness_params
      params.require(:happinesses).permit(:device_id, :feeling_like, :lat, :lng, :city, :country, :neighborhood, :string)
    end
  end
end
