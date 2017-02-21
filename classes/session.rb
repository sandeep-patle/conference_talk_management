# Session will hold name, array of talks, start_time, end_time and remaining_time
# Remaining time will keep track of balace time after adding talk into it
class Session
  attr_accessor :name, :talks, :start_time, :duration, :remaining_time, :buffer_time
  BREAK_TIME = 10

  def initialize name='', start_time, duration, buffer_time
    @name = name
    @start_time = start_time
    @duration = duration
    @talks = []
    @buffer_time = buffer_time
    # initialize with total session time
    @remaining_time = duration
  end

  def add_talk talk
    return false unless can_add_talk? talk
    @remaining_time -= talk.duration
    @talks << talk
    add_a_break if talk.not_lightning?
  end

  def add_a_break
    break_talk = Talk.new('Break 10min')
    @talks << break_talk
    @remaining_time -= break_talk.duration
  end

  def can_add_talk? talk
    duration  = talk.not_lightning? ? talk.duration + BREAK_TIME : talk.duration
    duration <= @remaining_time
  end

end
