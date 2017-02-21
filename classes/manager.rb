class Manager
  attr_accessor :tracks, :excluded_talks

  def schedule talks, sessions
    @tracks = []
    @excluded_talks = []
    talks = cleanup_talks(talks, sessions)

    while( has_pending_talks?(talks) )
      track_sessions = []
      sessions.each do |session|
        track_sessions << Session.new(session[:name], session[:start_time], session[:duration], session[:buffer_time])
      end

      track_sessions.each do |session|
        talks.each do |talk|
          next if talk.is_scheduled?

          if session.can_add_talk? talk
            talk.is_scheduled = true
            session.add_talk talk
          end
        end
      end

      @tracks << Track.new(track_sessions)
    end
  end

  private
  def has_pending_talks? talks
    talks.select { |talk| !talk.is_scheduled? }.size != 0
  end

  def get_max_session_duration sessions
    sessions.map { |k| k[:duration] }.max
  end

  def cleanup_talks talks, sessions
    valid_talks = []
    max_duration = get_max_session_duration(sessions)
    talks.each do |talk|
      talk.duration + 10 > max_duration ? @excluded_talks << talk : valid_talks << talk
    end
    valid_talks
  end

end
