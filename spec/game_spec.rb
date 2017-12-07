require 'game'
require 'player'

describe Game do
  let(:game){Game.new}
  let(:player){Player.new("vale")}

  describe "#attack" do
    it "checkes that player 2 HP decreases after an attack" do

      expect{game.attack(player)}.to change{player.hp}.by(-10)
    end
  end
end
