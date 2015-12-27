require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word puzzle path', {:type => :feature}) do
  it('processes the user entry and returns string without vowels') do
    visit('/')
    fill_in("word", :with => "Hi Mom")
    click_button('Submit')
    expect(page).to have_content("H- M-m")
  end
end
