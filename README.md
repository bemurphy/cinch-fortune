Cinch-Fortune
=============

Unix style fortunes to users for IRC.

Installation
------------

if you haven't already:

  $ gem install cinch

then install this gem:

  $ gem install cinch-fortune

Example Usage
-------------

  require 'cinch'
  require 'cinch/plugins/fortune'

  Cinch::Plugins::Fortune.configure do |c|
    c.max_length = 100
  end

  bot = Cinch::Bot.new do
    configure do |c|
      c.server           = "irc.freenode.net"
      c.nick             = "cinch"
      c.channels         = ["#cinch-bots"]
      c.plugins.plugins  = [Cinch::Plugins::Fortune]
    end

  end

  bot.start
