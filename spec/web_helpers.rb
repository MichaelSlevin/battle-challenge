def sign_in_and_play
  visit('/')
  fill_in('player_1', with:'John')
  fill_in('player_2', with:'Apple')
  click_button('submit')
end