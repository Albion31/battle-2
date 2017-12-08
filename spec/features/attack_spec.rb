require './lib/player'
require './lib/game'

feature "Attack player 2" do
  scenario 'attack and get confirmation' do
    sign_in_and_play
    # let(:game){double (:game, turn: "Sam")}
    click_button "Attack P2"
    expect(page).to have_content("Sam has been attacked")
  end
end
  feature "Attack player 1" do
    scenario 'attack and get confirmation' do
      sign_in_and_play
      click_button "Attack P1"

      expect(page).to have_content("Vale has been attacked")
    end
 end


# @game.turn == @game.player_1.name
