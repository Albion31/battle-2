
feature "Attack player 2" do
  scenario 'attack and get confirmation' do
    sign_in_and_play
    click_button "Attack P2"

    expect(page).to have_content("#{$player_2.name} has been attacked")
  end
 end
