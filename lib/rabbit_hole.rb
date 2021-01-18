require_relative 'rabbit_hole/version'

require 'bunny'

module RabbitHole
  class Session; end

  include Bunny

  def self.dig
    Bunny.module_eval do
      @original_new_impl = method(:new)

      def self.new
        Session.new
      end
    end
  end

  def self.kill
    Bunny.module_eval do
      def self.new
        @original_new_impl.call
      end
    end
  end
end
