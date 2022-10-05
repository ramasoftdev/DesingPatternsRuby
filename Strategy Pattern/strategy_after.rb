# 1)
#   https://medium.com/@joshsaintjacque/ruby-the-strategy-pattern-16c98b99b373#:~:text=The%20Strategy%20pattern%20helps%20you,by%20the%20context%20at%20runtime.
#
# 2)
#   https://refactoring.guru/es/design-patterns/strategy/ruby/example
#
# 3)
#   https://dev.to/lccezinha/design-patterns-in-ruby-strategy-pattern-21he

class Driver
  attr_reader :vehicle

  def initialize(vehicle)
    @vehicle = vehicle
  end

  def floor_it(speed:)
    vehicle.accelerate_to(speed)
  end
end

class Vehicle
  attr_reader :maximum_speed

  def initialize(maximum_speed)
    @maximum_speed = maximum_speed
  end

  def accelerate_to(target_speed)
    (0..maximum_speed).step(target_speed) do |speed|
      # go faster
      puts 'Accelerating...' + speed.to_s
    end
    puts 'Maximum velocity reached'
  end
  # lots of other Vehicle stuff
end

airplane = Vehicle.new(1800)
car = Vehicle.new(240)

pilot = Driver.new(airplane)
pilot.floor_it(speed: 120)

pilot2 = Driver.new(car)
pilot2.floor_it(speed: 120)
