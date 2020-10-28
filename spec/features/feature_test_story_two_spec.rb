require '/Users/krzysztofkasprzak/Projects/Battle/app.rb'
require 'rspec'
require 'capybara/rspec'

feature 'Testing the visibility of HP of Player 2' do
  scenario 'can display the HP of Player 2 ' do
    visit('/')
    fill_in('player1', with: 'John')
    fill_in('player2', with: 'Jane')
    click_button 'Submit'
    expect(page).to  have_content('Jane: 60HP')
  end
end
