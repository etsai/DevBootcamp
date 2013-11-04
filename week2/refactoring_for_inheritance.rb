class MotorVehicle
    attr_reader :gas_tank
    WHEELS = 4

    def initialize(args)
        @color = args[:color]
        @wheels = args[:wheels] || WHEELS
    end

    def brake
        @status = :stopped
    end

    def drive
        @status = :driving
    end

    def needs_gas?(tank)
        tank.sample
    end

end

class Car < MotorVehicle
    def needs_gas?
      @gas_tank = [true,true,false]
      super(gas_tank)
    end
end

class Bus < MotorVehicle
    attr_reader :passengers

    def initialize(args)
        super
        @num_seats = args[:num_seats]
        @fare = args[:fare]
        @passengers=[]
    end

    def needs_gas?
        @gas_tank = [true,true,true,false]
        super(gas_tank)
    end

    def drive
        super
        return self.brake if stop_requested?
    end

    def admit_passenger(passenger,money)
        @passengers << passenger if money > @fare
    end

    def stop_requested?
        [true,false].sample
    end

end

class Motorbike < MotorVehicle
    WHEELS = 2

    def needs_gas?
        @gas_tank = [true,false,false,false]
        super(gas_tank)
    end

    def drive
        super
        @speed = :fast
    end

    def weave_through_traffic
        @status = :driving_like_a_crazy_person
    end
end


#Tests
p Car::WHEELS == 4
p Bus::WHEELS == 4
p Motorbike::WHEELS == 2

car = Car.new(color: "black")
p car
p car.brake == :stopped
p car.drive == :driving
p car.needs_gas?
p car.gas_tank

bus = Bus.new(color: "red", wheels: 6, num_seats: 20, fare: 2)
p bus
p bus.drive == :driving
p bus.brake == :stopped
p bus.needs_gas?
p bus.admit_passenger(2, 2)
p bus.stop_requested?

p motorbike = Motorbike.new(color: "blue")
p motorbike.drive == :driving
p motorbike.brake == :stopped
p motorbike.needs_gas?
p motorbike.weave_through_traffic