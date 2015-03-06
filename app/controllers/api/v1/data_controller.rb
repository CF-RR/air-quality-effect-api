class Api::V1::DataController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: AirQuality.all
  end
end