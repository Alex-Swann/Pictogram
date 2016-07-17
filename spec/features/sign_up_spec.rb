
feature 'Sign Up' do

  scenario 'user should be able to sign up' do
    visit root_path(as: user)
    expect(page).to have_content 'Signed up'
  end

end
