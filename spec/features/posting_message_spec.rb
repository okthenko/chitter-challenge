require 'capybara/rspec'

feature 'Post message' do
    scenario 'A user can post a message' do
      visit('/')
      fill_in('message_text', :with => 'Goodbye')
      click_button 'Submit'
      expect(page).to have_content 'Goodbye'
  end
end

