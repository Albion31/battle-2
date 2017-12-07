require 'player'

describe Player do
  let(:player) {Player.new("vale")}
  describe"#print_name" do
    it "returns its name" do
      expect(player.name).to eq("vale")
    end
  end

  describe "#attack" do
    it "Checks that HP decreases by 10 HP" do
      expect{player.attack(player)}.to change{player.hp}.by(-10)
    end
  end
end
