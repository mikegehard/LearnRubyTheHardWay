#!/usr/bin/env ruby
#
require 'sinatra'
require 'dans_didactic_clock/time_keeper'

# otherwise sinatra won't always automagically launch its embedded
# http server when this script is executed
set :run, true

get '/' do
    time_keeper = DidacticClock::TimeKeeper.new
    return time_keeper.verbose_time
end
