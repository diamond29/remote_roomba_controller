class RoombaActionsController < ApplicationController

  def create
    ROOMBA_ACTION_MAP
      .fetch(params[:roomba_action_type])
      .call(RoombaContainer[:interface])
  end

  ROOMBA_ACTION_MAP = {
    "left" => ->(roomba) { roomba.turn_left },
    "right" => ->(roomba) { roomba.turn_right },
    "forward" => ->(roomba) { roomba.move_forward },
    "backward" => ->(roomba) { roomba.move_backward }
  }

end
