# https://youtu.be/Pbpq4Re1REQ?si=NhTyhbmcFsRA-sgL&t=445
class Socket
  def initialize(tivi, fridge, fan)
    @tivi = tivi
    @fridge = fridge
    @fan = fan
  end
  
  def activate
    @tivi.connect
    @fridge.connect
    @fan.connect
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

socket = Socket.new(Tivi.new, Fridge.new, Fan.new)
socket.activate
