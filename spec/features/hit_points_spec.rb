# require_relative 'web_helpers'

feature 'Hit points' do
  scenario 'print player 2\'s hit points'do
    sign_in_and_play
    expect(page).to have_content("Sam point: 5")

  end
end
