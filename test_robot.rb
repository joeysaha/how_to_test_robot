require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_needing_repairs_sent_to_station_1
    robot1 = Robot.new
    robot1.todos = [@foreign_model, @needs_repairs]
    assert(1, robot1.station)
    # arrange

    # act

    # assert
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    robot2 = Robot.new
    robot2.todos = [@vintage_model, @needs_repairs]
    assert(2, robot2.station)
    # arrange

    # act

    # assert
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    robot3 = Robot.new
    robot3.todos = [@needs_repairs]
    assert(3, robot3.station)
    # arrange

    # act

    # assert
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    robot4 = Robot.new
    robot4.todos = []
    assert(4, robot4.station)
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    robot5 = Robot.new
    robot5.todos = []
    assert(-1, robot5.prioritize_tasks)
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_on_day_off_returns_false
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_true
    skip
    # arrange

    # act

    # assert
  end

end
