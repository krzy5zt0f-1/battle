
feature 'Testing attack action on player 2' do
  scenario 'player 1 can attack player 2 ' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to  have_content('John attacked Jane!')
  end
  scenario 'player 1 can attack player 2 and reduces HP' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK!')
    expect(page).not_to  have_content('Jane: 60HP')
    expect(page).to  have_content('Jane: 50HP')
  end
end
