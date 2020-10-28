require '/Users/krzysztofkasprzak/Projects/Battle/app.rb'
require 'rspec'
require 'capybara/rspec'

feature 'Testing the visibility of HP of Player 2' do
  scenario 'can display the HP of Player 2 ' do
    sign_in_and_play
    expect(page).to  have_content('Jane: 60HP')
  end
end
