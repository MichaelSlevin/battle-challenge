require "game"

describe Game do
  let(:player) { double(hp: 90) }
  context "#attack" do
    it "Reduces the hp of a player by 10" do
      game = Game.new(player,player)
      expect(player).to receive(:reduce_hp)
      game.attack(player)
    end
  end
end
