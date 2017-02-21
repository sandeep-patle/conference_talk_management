# Include classes & module
require_relative 'classes/track'
require_relative 'classes/session'
require_relative 'classes/talk'
require_relative 'classes/file_handler'
require_relative 'classes/manager'
require_relative 'helper_module'

file_handler = FileHandler.new('data.txt')

manager = Manager.new

sessions = [
  { name: 'Morning Session', start_time: Time.new(2017, 02, 20, 9, 0, 0, -1), duration: 180, buffer_time: 0 },
  { name: 'Post Lunch Session', start_time: Time.new(2017, 02, 20, 13, 0, 0, -1), duration: 240, buffer_time: 60 }
]

manager.schedule(file_handler.talks, sessions)

manager.tracks.each_with_index do |track, track_index|
  puts "Track #{track_index + 1}:"
  time = nil

  track.sessions.each_with_index do |scheduled_session, index|
    puts "Session #{scheduled_session.name}"
    time = scheduled_session.start_time

    scheduled_session.talks.each do |talk|
      hours = HelperModule::am_pm(time.hour)
      output = "#{hours[0]}:#{HelperModule::format_minutes(time.min)}#{hours[1]} #{talk.title} "
      output += talk.duration == 5 ? 'lightning' : "#{talk.duration}min"
      puts output
      time = time + (talk.duration.to_i * 60)
    end

    puts '12:00PM Lunch' if index == 0
  end

  hours = HelperModule::am_pm(time.hour)
  puts "#{hours[0]}:#{HelperModule::format_minutes(time.min)}#{hours[1]} Networking Event"
  puts "\n"
end

puts "No of excluded task #{manager.excluded_talks.size}"
