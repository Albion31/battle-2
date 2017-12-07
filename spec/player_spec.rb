require 'player'

describe Player do
  describe"#print_name" do
    let(:player) {Player.new("vale")}
    it "returns its name" do
      expect(player.name).to eq("vale")

    end
  end
end
