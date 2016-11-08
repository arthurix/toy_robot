module Robot
  class Command
    class Place < Base

      def execute
        @position = movement
      end

      def movement
        @position.x, @position.y = case @direction.direction
        when 'NORTH'
          mov @position.x, @position.y + 1
        when 'SOUTH'
          mov @position.x, @position.y - 1
        when 'WEST'
          mov @position.x - 1, @position.y
        when 'EAST'
          mov @position.x + 1, @position.y
        end
        [ @position.x, @position.y ]
      end

      def mov(x, y)
        if x > @table.width || y > @table.height
          [@position.x, @position.y]
        else
          [x, y]
        end
      end
    end
  end
end
