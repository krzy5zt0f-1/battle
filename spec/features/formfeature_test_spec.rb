require '/Users/krzysztofkasprzak/Projects/Battle/app.rb'
require 'rspec'
require 'capybara/rspec'

feature 'Testing forms for players names' do
  scenario 'can run app and let players fill in thier names' do
    sign_in_and_play
    expect(page).to  have_content('John vs. Jane')
  end
end
