class Right < Base
  def execute
    if @robot.placed?
      @robot.position = Position.new(@robot.position.x,
                                     @robot.position.y,
                                     @robot.position.right)
    end
  end
end

