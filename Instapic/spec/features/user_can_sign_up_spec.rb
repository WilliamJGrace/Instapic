describe 'Timeline' do
  scenario 'Can signup as a user' do
    visit '/users/new'
    fill_in 'Name', with: 'Test'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Username', with: 'test123'
    fill_in 'Password', with: 'password123'
    fill_in 'Confirmation', with: 'test123'
    click_button 'Create User'
    expect(page).to have_content('Welcome, Test')
  end
end
