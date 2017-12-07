
feature "Attack player 2" do
  scenario 'attack and get confirmation' do
    sign_in_and_play
    click_link 'Attack'

    expect(page).to have_content("Attack confirmed")
  end

  scenario 'attack and reduce player 2 hp' do
    sign_in_and_play
    click_link 'Attack'

    expect(page).to have_content("Sam 90 HP")
  end
 end
