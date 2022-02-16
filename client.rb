require 'socket'

server = TCPSocket.new('127.0.0.1', 3333)

server_port = server.peeraddr[1]
server_addr = server.peeraddr[2]

server.puts 'Olá'
echo = server.gets
puts "#{server_addr}:#{server_port} => #{echo}"
server.close
