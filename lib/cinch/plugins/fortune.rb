require "cinch"
require "fortune_gem"

module Cinch
  module Plugins
    class Fortune
      include Cinch::Plugin

      class << self
        attr_accessor :max_length
        def configure; yield self; end
      end

      match "fortune"

      def execute(m)
        m.reply [m.user.nick, fortune].join(": ")
      end

      private

      def fortune
        max_length = self.class.max_length || 256
        fortune = FortuneGem.give_fortune(:max_length => max_length)
        sanitize_fortune(fortune)
      end

      def sanitize_fortune(fortune)
        fortune.gsub(/[\n]/, "").
          gsub(/[\t]/, " ").
          gsub("?A:", "? A:")
      end

    end
  end
end
