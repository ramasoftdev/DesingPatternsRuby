class Driver
    attr_reader :car
    
    def initialize
      @car ||= Car.new
    end
    
    def floor_it
      car.accelerate_to(120)
    end
end   

class Car
    def initialize
      # some setup here
    end
    
    def accelerate_to(target_speed)
      while target_speed > current_speed
        # go faster
      end
    end
    # lots of other car stuff
end