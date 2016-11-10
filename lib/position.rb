class Position
  attr_reader :x, :y, :direction

  DIRECTIONS = %w(NORTH EAST SOUTH WEST).freeze

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move(direction)
    case direction
    when 'NORTH'
      Position.new(@x, @y + 1, @direction)
    when 'EAST'
      Position.new(@x + 1, @y, @direction)
    when 'SOUTH'
      Position.new(@x, @y - 1, @direction)
    when 'WEST'
      Position.new(@x - 1, @y, @direction)
    end
  end

  def left
    DIRECTIONS[(DIRECTIONS.index(direction) - 1)]
  end

  def right
    DIRECTIONS[(DIRECTIONS.index(direction) + 1)]
  end
end
