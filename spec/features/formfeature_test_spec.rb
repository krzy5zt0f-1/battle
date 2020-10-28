require '/Users/krzysztofkasprzak/Projects/Battle/app.rb'
require 'rspec'
require 'capybara/rspec'

feature 'Testing forms for players names' do
  scenario 'can run app and let players fill in thier names' do
    visit('/')
    fill_in('player1', with: 'John')
    fill_in('player2', with: 'Jane')
    click_button 'Submit'
    expect(page).to  have_content('John vs. Jane')
  end
end
