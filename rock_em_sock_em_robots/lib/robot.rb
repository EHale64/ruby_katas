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

    def attack(target, tactics, i=0)
        target.hit(tactics[self.tactics[i]]) 
    end
end

def fight(robot_1, robot_2, tactics)
    order = turn_order([robot_1, robot_2])
    i = 0
    until i == order.max_by(&:tactics).tactics.size || robot_2.health <= 0 || robot_1.health <=0
        order[0].attack(order[1], tactics, i) 
        order[1].attack(order[0], tactics, i) if order[1].health > 0 
        i += 1
    end
    "#{order.max_by(&:health).name} has won the fight."
end

def turn_order(array)
    if array[0].speed != array[1].speed
        array.max_by(2) { |robot| robot.speed }
    else
        array
    end
end

