feature 'Testing wining' do
  scenario 'player 1 wins' do
    sign_in_and_play
    fight_unitl_player2_loses
    expect(page).to  have_content('John won!')
  end
end
