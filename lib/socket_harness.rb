require "socket_harness/version"
require "socket_harness/proxy"
require 'socket'
require 'optparse'

module SocketHarness

  def self.cli
    options = {}
    parser = OptionParser.new do |opts|
      opts.banner = "Usage: #{$0} [options] remotehost remoteport"
      opts.version = SocketHarness::VERSION

      opts.on("-p", "--port PORT", "local port to bind") do |v|
        options[:local_port] = v
      end

      opts.on("-b", "--bind ADDRESS", "local address to bind") do |v|
        options[:local_host] = v
      end

      opts.on("--block-size NUMBER", "chunck out large data reads. by default 1024 byte") do |v|
        options[:local_host] = v
      end


      opts.on("-d", "--delay NUMBER", "delay for client response: 12 will deplay 12ms for package sending back to the client.") do |v|
        options[:delay] = v
      end
    end
    parser.parse!
    remote_host = ARGV.shift
    remote_port = ARGV.shift

    if remote_host.to_s.empty? || remote_port.to_s.empty?
      puts parser
      exit 1
    end

    Proxy.new(remote_host, remote_port, options).run
  end
end
