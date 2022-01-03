require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/robot'

class RobotTest < MiniTest::Test
    def setup
        @tactics = { "punch" => 20,
                     "laser" => 30,
                     "missile" => 35,
                     "Sonic Scream" => 100 }

        @robot_1 = Robot.new({ "name" => "Rocky", 
                               "health" => 100, 
                               "speed" => 20, 
                               "tactics" => ["punch", "punch", "laser", "missile"] })
        @robot_2 = Robot.new({ "name" => "Missile Bob",
                               "health" => 100,
                               "speed" => 21,
                               "tactics" => ["missile", "missile", "missile", "missile"] })
        @robot_3 = Robot.new({ "name" => "Optimus", 
                               "health" => 200, 
                               "speed" => 20, 
                               "tactics" => ["punch", "punch", "laser", "missile"] })
        @robot_4 = Robot.new({ "name" => "Megatron", 
                               "health" => 110, 
                               "speed" => 20, 
                               "tactics" => ["punch", "punch", "laser", "missile"] })
        @robot_5 = Robot.new({ "name" => "Star Scream",
                               "health" => 100,
                               "speed" => 30,
                               "tactics" => ["Sonic Scream", "punch"]})                       
        @robot_6 = Robot.new({ "name" => "Bumblebee",
                               "health" => 150,
                               "speed" => 7,
                               "tactics" => ["punch"]})                       
    end
  
    def test_it_has_attributes
        assert_equal "Rocky", @robot_1.name
        assert_equal 100, @robot_1.health
        assert_equal 20, @robot_1.speed
        assert_equal ["punch", "punch", "laser", "missile"], @robot_1.tactics
    end

    def test_it_finds_turn_order
        assert_equal [@robot_2, @robot_1], turn_order([@robot_1, @robot_2])
        assert_equal [@robot_1, @robot_3], turn_order([@robot_1, @robot_3])

    end

    def test_it_can_attack
        assert_equal 100, @robot_1.health
        @robot_2.attack(@robot_1, @tactics)
        assert_equal 65, @robot_1.health
    end

    def test_two_robots_can_fight
        assert_equal "Missile Bob has won the fight.", fight(@robot_1, @robot_2, @tactics)
        assert_equal "Optimus has won the fight.", fight(@robot_3, @robot_2, @tactics)
    end
    
    def test_it_finds_winner_when_tactics_run_out_before_health
        assert_equal "Optimus has won the fight.", fight(@robot_3, @robot_4, @tactics)
    end

    def test_a_robot_stops_fighting_when_out_of_tactics
        assert_equal "Optimus has won the fight.", fight(@robot_3, @robot_5, @tactics)
        assert_equal 100, @robot_3.health
    end

    def test_a_robot_stops_fighting_when_out_of_tactics
        assert_equal "Star Scream has won the fight.", fight(@robot_6, @robot_5, @tactics)
        assert_equal 80, @robot_5.health
    end
end