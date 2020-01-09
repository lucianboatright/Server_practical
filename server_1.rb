require 'socket'

server = TCPServer.new(2345)

socket = server.accept

socket.puts "What do you say? say 'quit' when you want to stop"

talk = true
while talk == true
  they_said = socket.gets.chomp

  socket.puts "#{they_said}"

  if they_said == "quit"
    talk = false
  end
  puts @note
end


class NoteList

  attr_reader :note

  def initialize
    @note = []
  end

  def note(socket)
    @note << socket
  end
end

NoteList

socket.close

# class NoteList
#   attr_reader
#   def initialize
#     @note = []
#   end

#   def note(string)
#     @note << string
#   end
# end
# socket.close

