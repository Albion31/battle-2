require 'player'
require 'game'

describe Player do
  let(:player) {Player.new("vale")}
  describe"#print_name" do
    it "returns its name" do
      expect(player.name).to eq("vale")
    end
  end

end
