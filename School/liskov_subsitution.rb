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

birds = [Bird.new, Eagle.new, Duck.new]

birds.each do |bird|
  bird.fly
end
