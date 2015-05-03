class Api::V1::BandsController < ApplicationController
  include ActionController::Serialization
  respond_to :json

  def index
    render json: Band.all, each_serializer: BandIndexSerializer
  end

  def show
    render json: Band.find(params[:id])
  end

  def create
    @band = Band.create(band_params)
    render json: @band, serializer: BandSerializer
  end

  def destroy
    Band.find(params[:id]).destroy
    render json: {}, status: 200
  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)
    render json: @band, serializer: BandSerializer
  end

  private

  def band_params
    params.require(:band).permit(:name, :description)
  end
end
