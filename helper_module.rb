module HelperModule

  # comvert hour into 12 hours format
  def self.am_pm(hour)
    meridian = (hour >= 12) ? 'PM' : 'AM'
    hour = case hour
      when 0, 12
       12
      when 13 .. 23
       hour - 12
      else
       hour
      end
   [hour, meridian]
  end

  def self.format_minutes min
    min < 10 ? "0#{min}" : min
  end

end
