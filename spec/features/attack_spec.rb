feature "Attack player 2" do
  scenario 'attack and get confirmation' do
    sign_in_and_play
    click_link 'Attack'

    expect(page).to have_content("Attack confirmed")
  end

end
