feature 'testing for the turn switch' do
  scenario "letting players play in turns" do
    sign_in_and_play
    click_button('Attack')
    click_button('OK!')
    click_button('Attack')
    click_button('OK!')
    expect(page).to  have_content('Jane: 50HP')
    expect(page).to  have_content('John: 50HP')
  end
end
