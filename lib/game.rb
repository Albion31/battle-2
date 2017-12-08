require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2 )
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.reduce_hp(Player::DEFAULT_DAMAGE)
  end

end
