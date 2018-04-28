class CriteriaController < ApplicationController
  before_action :set_criterium, only: [:show, :update, :destroy]

  # GET /criteria
  def index
    @criteria = Criterium.all

    render json: @criteria
  end

  # GET /criteria/1
  def show
    render json: @criterium
  end

  # POST /criteria
  def create
    @criterium = Criterium.new(criterium_params)

    if @criterium.save
      render json: @criterium, status: :created, location: @criterium
    else
      render json: @criterium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /criteria/1
  def update
    if @criterium.update(criterium_params)
      render json: @criterium
    else
      render json: @criterium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /criteria/1
  def destroy
    @criterium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criterium
      @criterium = Criterium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def criterium_params
      params.require(:criterium).permit(:name, :icon, :event_id)
    end
end
