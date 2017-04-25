class RoombaStatus
  attr_reader :battery_percentage

  def initialize(battery_percentage_input:)
    @battery_percentage = battery_percentage_input
  end
end
