class Game

  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def switch_turn
    @players.rotate!
  end

  def attack(player)
    player.reduce_hp
    switch_turn
  end

end
