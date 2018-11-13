require "player"
require "game"

describe Game do
  let(:player1) { Player.new("player1") }
  let(:player2) { Player.new("player2") }
  let(:game) { Game.new(player1,player2) }

  context "#attack" do
    it "Reduces the hp of a player by 10" do
      game.attack(player2)
      expect(player2.hp).to eq(90)
    end
  end

  context "#switch_turn" do

    it 'should #switch_turn' do
      players = game.players
      player_turn = game.players[0].name
      game.switch_turn
      expect(game.players[0].name).to_not eq player_turn
    end

  end
end
