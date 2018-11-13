require "player"

describe Player do

  context '.name' do
    it 'should return player name' do
      expect(Player.new("john")).to respond_to(:name)
    end
  end

end
