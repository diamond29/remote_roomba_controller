RoombaContainer = Hash.new

RoombaContainer[:rumba] = Rumba.new '/dev/tty.usbserial-DA017X6X', 115200
RoombaContainer[:rumba].start
RoombaContainer[:rumba].safe_mode
RoombaContainer[:interface] = RoombaInterface.new(RoombaContainer[:rumba])
