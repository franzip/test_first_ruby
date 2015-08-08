class Timer
  
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours   = @seconds / 3600
    mins    = (@seconds / 60) % 60
    seconds = @seconds % 60
    sprintf "%02d:%02d:%02d", hours, mins, seconds
  end
end
