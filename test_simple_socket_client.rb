require 'socket'      # Sockets are in standard library

hostname = '192.168.2.9'
port = 1516

puts "try connect to #{hostname}:#{port}"
s = TCPSocket.open(hostname, port)

while line = s.gets   # Read lines from the socket
  puts line.chop      # And print with platform line terminator
end
s.close               # Close the socket when done
