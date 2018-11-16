require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_needing_repairs_sent_to_station_1
    robot1 = Robot.new
    # robot1.todos = [@foreign_model, @needs_repairs]

    assert(1, robot1.station)
    # these steps are wrong
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
    assert(4, robot4.station)
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    robot5 = Robot.new
    assert(-1, robot5.prioritize_tasks)
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    robot6 = Robot.new
    todos = ["needs_repairs", "foreign_model"]
    assert("needs_repairs", robot6.prioritize_tasks)
    # arrange

    # act

    # assert
  end

  def test_workday_on_day_off_returns_false
    robot7 = Robot.new
    robot7.day_off= "Sunday"
    refute(false, robot7.workday?("Sunday"))
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_true
    robot8 = Robot.new
    robot8.day_off= "Sunday"
    assert(true, robot8.workday?("Monday"))
    # arrange

    # act

    # assert
  end

end
