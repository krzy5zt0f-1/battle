def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'John')
  fill_in('player2', with: 'Jane')
  click_button 'Submit'
end

def fight_unitl_player2_loses
  for i in 1..10 do
  click_button('Attack')
  click_button('OK!')
  end
  click_button('Attack')
end
