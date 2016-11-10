class Report < Base
  def execute
    output = @robot.report.to_s
    puts output
    output
  end
end
