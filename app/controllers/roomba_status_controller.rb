class RoombaStatusController < ApplicationController
  def index
    sensor_data = roomba.sensors
    render json: sensor_data
  end

  def roomba
    RoombaContainer[:interface]
  end
end
