# frozen_string_literal: true
class HikesController < OpenReadController
  before_action :set_hike, only: [:show, :update, :destroy]

  # GET /hikes
  def index
    @hikes = current_user.hikes.all

    render json: @hikes
  end

  # GET /hikes/1
  def show
    render json: current_user.hikes.find(params[:id])
  end

  # POST /hikes
  def create
    @hike = current_user.hikes.build(hike_params)

    if @hike.save
      render json: @hike, status: :created, location: @hike
    else
      render json: @hike.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rhikes/1
  def update
    if @hike.update(hike_params)
      head :no_content
      # render json: @hike
    else
      render json: @hike.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hikes/1
  def destroy
    @hike.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_hike
    @hike = current_user.hikes.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def hike_params
    params.require(:hike).permit(:when, :trail, :duration, :note, :mountain_id, :user_id)
  end

  private :set_hike, :hike_params
end
