class Api::V1::DataController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    air = AirQuality.new(params[:location]) unless params[:location] == nil
    if air == nil
      render json: "Please specify a location, such as 'Durham NC' or '27705'"
    else
      render json: air
    end
  end
end
