# Talk
class Talk
  attr_accessor :title, :duration, :is_scheduled

  LIGHTNING_TALK_LENGTH = 5

  def initialize input_line
    begin
      @title = input_line.rpartition(' ').first.to_s
      time = input_line.rpartition(' ').last.strip

      if time == 'lightning'
        @duration = LIGHTNING_TALK_LENGTH
      else
        time.slice! 'min'
        @duration = time.to_i
      end

      @is_scheduled = false
    rescue Exception => e
      raise e.message
    end
  end

  def is_scheduled?
    is_scheduled
  end

  def not_lightning?
    duration != LIGHTNING_TALK_LENGTH
  end

end
