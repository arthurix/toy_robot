class Place < Base
  def execute
    @robot.position = @position if @table.valid?(@position)
  end
end
