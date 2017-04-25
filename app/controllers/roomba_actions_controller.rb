class RoombaActionsController < ApplicationController

  ROOMBA_ACTION_MAP = {
    "left" => ->() { roomba.turn_left },
    "right" => ->() { roomba.turn_right },
    "forward" => ->() { roomba.move_forward },
    "backward" => ->() { roomba.move_backward }
  }

  def create
    ROOMBA_ACTION_MAP[params[:roomba_action_type]].call
  end

  def roomba
    RoombaContainer[:interface]
  end
end
