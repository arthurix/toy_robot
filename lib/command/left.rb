class Left < Base
  def execute
    if @robot.placed?
      @robot.position = Position.new(@robot.position.x,
                                     @robot.position.y,
                                     @robot.position.left)
    end
  end
end
