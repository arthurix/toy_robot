require 'test/unit'
require_relative '../robot'

class TestInput < Test::Unit::TestCase

  def test_input_a
    robot   = Robot.new
    table   = Table.new(5, 5)
    command = Command.new(robot, table)

    assert_equal(command.dispatch('PLACE 0,0,NORTH').execute.direction, 'NORTH')
    assert_equal(command.dispatch('MOVE').execute.y, 1)
    assert_equal(command.dispatch('REPORT').execute, '0,1,NORTH')
  end

  def test_input_b
    robot   = Robot.new
    table   = Table.new(5, 5)
    command = Command.new(robot, table)

    assert_equal(command.dispatch('PLACE 0,0,NORTH').execute.direction, 'NORTH')
    assert_equal(command.dispatch('LEFT').execute.direction, 'WEST')
    assert_equal(command.dispatch('REPORT').execute, '0,0,WEST')
  end

  def test_input_c
    robot   = Robot.new
    table   = Table.new(5, 5)
    command = Command.new(robot, table)

    assert_equal(command.dispatch('PLACE 1,2,EAST').execute.direction, 'EAST')
    assert_equal(command.dispatch('MOVE').execute.x, 2)
    assert_equal(command.dispatch('MOVE').execute.x, 3)
    assert_equal(command.dispatch('LEFT').execute.y, 2)
    assert_equal(command.dispatch('MOVE').execute.y, 3)
    assert_equal(command.dispatch('REPORT').execute, '3,3,NORTH')
  end
end
