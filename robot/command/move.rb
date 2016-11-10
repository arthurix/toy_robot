class Move < Base
  def execute
    if @robot.placed?
      new_position = @robot.position.move(@robot.position.direction)
      @robot.position = new_position if @table.valid?(new_position)
    end
  end
end
