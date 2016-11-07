require_relative 'command/base'
require_relative 'command/place'
require_relative 'command/movements'

module Robot
  class Command
    def initialize(command)
      @command = command
    end

    def execute
      dispatch(name)
    end

    def name
      options[1]
    end

    private

    def dispatch(name)
      clazz = Robot::Command.const_get("#{name.to_s.capitalize}")
      clazz.new(options).execute
    end

    def options
      @command.match(/(.*) (\d)\,(\d),(.*)|(.*)/)
    end
  end
end
