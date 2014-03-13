require "socket_harness/version"
require "socket_harness/proxy"
require 'socket'

module SocketHarness

  def self.cli
    if ARGV.length < 1
      $stderr.puts "Usage: #{$0} remoteHost:remotePort [ localPort [ localHost ] ]"
      exit 1
    end

    remoteHost, remotePort = ARGV.shift.split(":")
    puts "target address: #{remoteHost}:#{remotePort}"
    localPort = ARGV.shift || '12121'
    localHost = ARGV.shift

    Proxy.new(remoteHost, remotePort, localHost, localPort).run
  end
end
