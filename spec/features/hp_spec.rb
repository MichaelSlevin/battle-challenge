feature 'HP' do
  scenario 'check player 2 hp is shown' do
    sign_in_and_play
    expect(page).to have_content 'Apple hp: 100'
  end
end
