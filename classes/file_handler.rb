# Read file and return array of talk objects
class FileHandler
  attr_accessor :talks

  def initialize filename = ''
    begin
      @talks = []
      File.readlines(filename).each do |line|
        @talks << Talk.new(line)
      end
    rescue Exception => e
       raise e.message
    end
  end

end
