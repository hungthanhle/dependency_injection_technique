# https://youtu.be/Pbpq4Re1REQ?si=NhTyhbmcFsRA-sgL&t=445
class Socket
  def initialize()
    @devices = []
  end

  def add_device(device)
    @devices.push device
  end
  
  def activate
    @devices.each do |device|
      device.connect
    end
  end
end

class Tivi
  def connect
    puts "Tivi connected!"
  end
end

class Fridge
  def connect
    puts "Fridge connected!"
  end
end

class Fan
  def connect
    puts "Fan connected!"
  end
end

socket = Socket.new
socket.add_device(Tivi.new)
socket.add_device(Fridge.new)
socket.add_device(Fan.new)
socket.activate
