class Robot
  attr_accessor :position

  def initialize
    @position = nil
  end

  def report
    return "\e[31mRobot not placed. PLACE command missing\e[0m" unless placed?
    "#{@position.x},#{@position.y},#{@position.direction}"
  end

  def placed?
    !@position.nil?
  end
end
