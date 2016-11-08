require 'pry'

require_relative 'robot/table'
require_relative 'robot/position'
require_relative 'robot/command'

module Robot
  extend module_function
  
  def command(option)
    @command ||= Command.new(option)
  end

  def move
    command.execute
  end
end
