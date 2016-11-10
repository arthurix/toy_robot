require_relative 'command/base'
require_relative 'command/move'
require_relative 'command/left'
require_relative 'command/place'
require_relative 'command/right'
require_relative 'command/report'

class Command
  def initialize(robot, table)
    @robot = robot
    @table = table
  end

  def dispatch(input)
    input = parse(input)
    clazz = Robot.const_get(input[:command].to_s.capitalize)
    clazz.new(@robot,
              @table,
              Position.new(input[:x], input[:y], input[:direction]))
  end

  def parse(input)
    input = input.match(/(.*) (\d)\,(\d),(.*)|(.*)/)
    input = { command: input[1] || input[5],
              x: input[2].to_i,
              y: input[3].to_i,
              direction: input[4] || input[5] }
    raise ArgumentError, "\e[31mInvalid Command\e[0m" unless input[:command] =~
                                                  valid_commands
    input
  end

  private

  def valid_commands
    /^PLACE|MOVE|LEFT|RIGHT|REPORT$/
  end
end
