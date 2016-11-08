module Robot
  class Command
    class Base
      attr_accessor :position, :direction

      def initialize(table, position, direction)
        @position = position
        @direction = direction
        @table = table
      end
    end
  end
end
