feature 'Testing infrastructure' do
  scenario 'check that player 1 and player 2 names are shown' do
    sign_in_and_play
    expect(page).to have_content 'Hello John and Apple'
  end
end
