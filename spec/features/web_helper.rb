
def sign_up
  visit '/users/new'
  fill_in :first_name, with: 'Alex'
  fill_in :last_name, with: 'Swann'
  fill_in :email, with: 'alex@hotmail.com'
  fill_in :password, with: 'goatsmilk'
  click_button 'Sign Up'
end
