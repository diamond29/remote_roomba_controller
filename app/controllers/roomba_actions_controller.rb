class RoombaActionsController < ApplicationController

  ROOMBA_ACTION_MAP = {
    "left" => ->() { RoombaContainer[:interface].turn_left },
    "right" => ->() { RoombaContainer[:interface].turn_right },
    "forward" => ->() { RoombaContainer[:interface].move_forward },
    "backward" => ->() { RoombaContainer[:interface].move_backward }
  }

  def create

    ROOMBA_ACTION_MAP[params[:roomba_action_type]].call
  end
end
