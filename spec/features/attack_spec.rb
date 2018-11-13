feature "attack" do
  scenario "Player 1 atatcks Player 2 reduces hp by 10" do
    sign_in_and_play
    click_button('attack_player_2')
    expect(page).to have_content 'Apple hp: 90'
  end
end
