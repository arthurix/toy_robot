module Robot
  class Command
    class Base
      attr_accessor :table, :command, :x, :y, :direction

      def initialize(options)
        @command   = options[1]
        @x         = options[2]
        @y         = options[3]
        @direction = options[4]
      end

      def table
        @table ||= Table.new(5, 5)
      end

      def movement
        x, y = case direction
        when 'NORTH'
          [ x, y + 1 ]
        when 'SOUTH'
          [ x, y - 1 ]
        when 'WEST'
          [ x - 1, y ]
        when 'EAST'
          [ x + 1, y ]
        end
        [ x, y ]
      end
    end
  end
end
