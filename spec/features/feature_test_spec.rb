require '/Users/krzysztofkasprzak/Projects/Battle/app.rb'
require 'rspec'
require 'capybara/rspec'

feature 'Testing infrastructure' do
  scenario 'can run app and check the page content' do
    visit('/')
    expect(page).to  have_content('Testing infrastructure working')
  end
end
