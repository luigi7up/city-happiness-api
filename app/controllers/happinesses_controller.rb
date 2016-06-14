class HappinessesController < ApplicationController
  before_action :set_happiness, only: [:show, :update, :destroy]

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

  # PATCH/PUT /happinesses/1
  def update
    if @happiness.update(happiness_params)
      render json: @happiness
    else
      render json: @happiness.errors, status: :unprocessable_entity
    end
  end

  # DELETE /happinesses/1
  def destroy
    @happiness.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happiness
      @happiness = Happiness.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def happiness_params
      params.require(:happiness).permit(:device_id, :feeling_like, :lat, :lng, :city, :country, :neighborhood, :string)
    end
end
