class Robot
    attr_reader :name, :health, :speed, :tactics
    def initialize(hash)
        @name = hash["name"]
        @health = hash["health"]
        @speed = hash["speed"]
        @tactics = hash["tactics"]
    end

    def hit(num)
        @health -= num
    end

    def attack(target, tactics)
        target.hit(tactics[self.tactics[0]])
    end
end

def fight(robot_1, robot_2, tactics)
    binding.pry
end

def turn_order(array)
    if array[0].speed != array[1].speed
        array.max_by(2) { |robot| robot.speed }
    else
        array
    end
end

