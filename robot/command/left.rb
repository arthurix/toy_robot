module Robot
  class Command
    class Left < Base

      def execute
        binding.pry
        position = movement
      end
    end
  end
end
