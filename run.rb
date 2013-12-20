#!/usr/bin/env ruby

require_relative 'bots'

if ARGV[0] && ARGV[0] != 'start'
  Ebooks::Bot.get(ARGV[0]).start
else
  EM.run do
   Ebooks::Bot.all.each do |bot|
      bot.start
    end
  end
end
