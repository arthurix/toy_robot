require_relative 'robot/table'
require_relative 'robot/command'

module Robot
  extend module_function

  def table
    @table ||= Table.new(5, 5)
  end

  def command(option)
    @command ||= Command.new(option).execute
  end
end
