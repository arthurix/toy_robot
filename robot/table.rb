module Robot
  # Square Tabletop
  class Table
    attr_reader :width, :height

    def initialize(width, height)
      @width = width
      @height = height
    end
  end
end
