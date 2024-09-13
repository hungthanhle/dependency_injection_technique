# Định nghĩa lớp cha Bird
class Bird
  def fly
    puts "Fly"
  end
end

# Định nghĩa các lớp con
class Eagle < Bird
  def fly
    puts "Eagle Fly"
  end
end

class Duck < Bird
  def fly
    puts "Duck Fly"
  end
end

class Penguin < Bird
  def fly
    raise NoFlyException, "Penguins can't fly!"
  end
end

birds = [Bird.new, Eagle.new, Duck.new, Penguin.new]

birds.each do |bird|
  begin
    bird.fly
  rescue NoFlyException => e
    puts e.message # Penguin
  end
end

class NoFlyException < StandardError
end
