class RoombaInterface
  ACTION_TIME_SECONDS = 0.5
  WHEEL_ROTATION_RATE = 300

  def initialize(rumba)
    @rumba = rumba
  end

  def move_forward
    @rumba.straight WHEEL_ROTATION_RATE
    sleep ACTION_TIME_SECONDS
    @rumba.halt
  end

  def move_backward
    @rumba.straight -WHEEL_ROTATION_RATE
    sleep ACTION_TIME_SECONDS
    @rumba.halt
  end

  def turn_right
    @rumba.spin_right(WHEEL_ROTATION_RATE)
    sleep ACTION_TIME_SECONDS
    @rumba.halt
  end

  def turn_left
    @rumba.spin_left(WHEEL_ROTATION_RATE)
    sleep ACTION_TIME_SECONDS
    @rumba.halt
  end

end
