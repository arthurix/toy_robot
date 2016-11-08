require_relative 'position'
require_relative 'direction'
require_relative 'command/base'
require_relative 'command/place'

module Robot
  class Command
    def initialize(command)
      @command = command
    end

    def prepare
      dispatch(name)
    end

    def name
      options[1]
    end

    def position
      @position ||= Position.new(options[2].to_i, options[3].to_i)
    end

    def direction
      @direction ||= Direction.new(options[4])
    end

    def table
      @table ||= Table.new(5, 5)
    end

    def move
      prepare.execute
    end

    private

    def dispatch(name)
      clazz = Robot::Command.const_get("#{name.to_s.capitalize}")
      clazz.new(table, position, direction)
    end

    def options
      @command.match(/(.*) (\d)\,(\d),(.*)|(.*)/)
    end
  end
end
