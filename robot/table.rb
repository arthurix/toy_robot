module Robot
  # Square Tabletop
  class Table
    attr_accessor :width, :height, :position
    def initialize(width, height)
      @width = width
      @height = height
      @position = nil
    end
  end
end
