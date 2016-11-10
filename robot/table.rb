class Table
  def initialize(width, height)
    @width = width
    @height = height
  end

  def valid?(position)
    position.x < @height &&
      position.y < @width &&
      position.x >= 0 &&
      position.y >= 0
  end
end
