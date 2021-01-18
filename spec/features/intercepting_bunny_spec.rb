require 'bunny'
require 'rabbit_hole'

RSpec.describe 'intercepting Bunny' do
  describe 'Bunny.new' do
    it 'can turn on and off Bunny::Session intercepting' do
      RabbitHole.dig
      expect(Bunny.new).to be_a(RabbitHole::Session)

      RabbitHole.kill
      expect(Bunny.new).to be_a(Bunny::Session)

      RabbitHole.dig
      expect(Bunny.new).to be_a(RabbitHole::Session)
    end
  end
end
