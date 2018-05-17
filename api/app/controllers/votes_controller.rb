class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :update, :destroy]

  # GET /votes
  def index
    @votes = Vote.all

    render json: @votes
  end

  # GET /votes/1
  def show
    render json: @vote
  end

  # POST /votes
  def create
    if Vote.exists?(vote_params.slice("criterium_id", "contestant_id", "voter_id").to_h)
      render status: :conflict
    else
      @vote = Vote.new(vote_params)

      if @vote.save
        render json: @vote, status: :created
      else
        render json: @vote.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /votes/1
  def update
    if @vote.update(vote_params)
      render json: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /votes/1
  def destroy
    @vote.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find_by(vote_params.slice("criterium_id", "contestant_id", "voter_id").to_h)
    end

    # Only allow a trusted parameter "white list" through.
    def vote_params
      params.require(:vote).permit(:contestant_id, :criterium_id, :vote_type, :voter_id)
    end
end
