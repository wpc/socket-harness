# SocketHarness

SocketHarness is a test utilities that helps implement Test Harness pattern from the book "Release it!".  It seats between application and integration server to simulate odd network/application behaviors.

Current Feature:
* delay: help for simulating slow network or server to test timeout failure mode.

## Installation

Add this line to your application's Gemfile:

    gem 'socket_harness'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install socket_harness

## Usage

```
Usage: bin/socket_harness [options] remotehost remoteport
    -p, --port PORT                  local port to bind
    -b, --bind ADDRESS               local address to bind
        --block-size NUMBER          chunck out large data reads. by default 1024 byte
    -d, --delay NUMBER               delay for client response: 12 will deplay 12ms for package sending back to the client.
```


## Contributing

1. Fork it ( http://github.com/<my-github-username>/socket_harness/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
