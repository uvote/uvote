class ContestantsController < ApplicationController
  before_action :set_contestant, only: [:show, :update, :destroy]

  # GET /contestants
  def index
    @contestants = Contestant.all

    render json: @contestants
  end

  # GET /contestants/1
  def show
    render json: @contestant
  end

  # POST /contestants
  def create
    @contestant = Contestant.new(contestant_params)

    if @contestant.save
      render json: @contestant, status: :created, location: @contestant
    else
      render json: @contestant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contestants/1
  def update
    if @contestant.update(contestant_params)
      render json: @contestant
    else
      render json: @contestant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contestants/1
  def destroy
    @contestant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contestant
      @contestant = Contestant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contestant_params
      params.require(:contestant).permit(:name, :icon, :references)
    end
end
