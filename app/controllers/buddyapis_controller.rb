class BuddyapisController < ApplicationController
  before_action :set_buddyapi, only: [:show, :update, :destroy]

  # GET /buddyapis
  def index
    @buddyapis = Buddyapi.all

    render json: @buddyapis
  end

  # GET /buddyapis/1
  def show
    render json: @buddyapi
  end

  # POST /buddyapis
  def create
    @buddyapi = Buddyapi.new(buddyapi_params)

    if @buddyapi.save
      render json: @buddyapi, status: :created, location: @buddyapi
    else
      render json: @buddyapi.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buddyapis/1
  def update
    if @buddyapi.update(buddyapi_params)
      render json: @buddyapi
    else
      render json: @buddyapi.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buddyapis/1
  def destroy
    @buddyapi.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buddyapi
      @buddyapi = Buddyapi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def buddyapi_params
      params.require(:buddyapi).permit(:user_name, :content)
    end
end
