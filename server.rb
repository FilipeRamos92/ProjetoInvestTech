require 'socket'

server = TCPServer.new('127.0.0.1', 3333)

loop do
  client = server.accept

  client_port = client.peeraddr[1]
  client_addr = client.peeraddr[2]

  received = client.gets
  puts "#{client_addr}:#{client_port} => #{received}"
  client.puts received
  client.close
end
