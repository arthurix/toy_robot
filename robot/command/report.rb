class Report < Base
  def execute
    puts @robot.report.to_s
  end
end
