class DockingStation
  @@counter = 1
  
  def release_bike
    if @@counter == 0
      return 'nope'
    elsif @@counter == 1
      @@counter -= 1
      return Bike.new
    end
  end

  def docking
    if @@counter == 0
      @@counter += 1
      return "thanks for the bike."
    elsif @@counter == 1
      return "docking station full"
    end
  end
end

class Bike
  def working?
    return true
  end
end
