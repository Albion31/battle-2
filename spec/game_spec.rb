require 'game'
require 'player'

describe Game do
  subject(:game){described_class.new(player_1, player_2)}
  let(:player_1){double :player1}
  let(:player_2){double :player2}

  describe "#attack" do
    it "checkes that player 1 HP decreases after an attack" do

      expect(subject.player_1).to receive(:reduce_hp).with(Player::DEFAULT_DAMAGE)
      subject.attack(player_1)
    end
  end


  describe "#initialize" do
    it "checks initialize variable with player 1" do
      expect(subject.player_1).to eq(player_1)
    end

    it "checks initialize variable with player 2" do
      expect(subject.player_2).to eq(player_2)
    end
  end
end
