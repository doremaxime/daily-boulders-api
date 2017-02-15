# frozen_string_literal: true

# :nodoc:
class ClimbsController < ApplicationController
  before_action :set_climb, only: [:show, :update, :destroy]

  # GET /climbs
  def index
    @climbs = Climb.all

    render json: @climbs
  end

  # GET /climbs/1
  def show
    render json: @climb
  end

  # POST /climbs
  def create
    @climb = Climb.new(climb_params)

    if @climb.save
      render json: @climb, status: :created
    else
      render json: @climb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /climbs/1
  def update
    if @climb.update(climb_params)
      render json: @climb
      head :no_content
    else
      render json: @climb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /climbs/1
  def destroy
    @climb.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_climb
    @climb = Climb.find(params[:id])
  end
  private :set_climb

  # Only allow a trusted parameter "white list" through.
  def climb_params
    params.require(:climb).permit(:date, :grade)
  end
  private :climb_params
end
