class RoombaInterface
  ACTION_TIME_SECONDS = 0.5
  WHEEL_ROTATION_RATE = 300

  def initialize(rumba)
    @rumba = rumba
  end

  def move_forward
    execute_roomba_movement_action { @rumba.straight WHEEL_ROTATION_RATE }
  end

  def move_backward
    execute_roomba_movement_action { @rumba.straight -WHEEL_ROTATION_RATE }
  end

  def turn_right
    execute_roomba_movement_action { @rumba.spin_right(WHEEL_ROTATION_RATE) }
  end

  def turn_left
    execute_roomba_movement_action { @rumba.spin_left(WHEEL_ROTATION_RATE) }
  end

  def sensors
    @rumba.get_sensors
  end

  private

  def execute_roomba_movement_action
    yield

    sleep ACTION_TIME_SECONDS
    @rumba.halt
  end

end
