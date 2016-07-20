
feature 'User Posts' do

  scenario 'user can create a post' do
    sign_in
    click_link 'New Post'
    fill_in :'post[title]', with: 'Alex\'s Place'
    fill_in :'post[description]', with: 'Image taken in London'
    click_button 'Create Post'
    message = "Title: Alex's Place Description: Image taken in London"
    expect(page).to have_content(message)
  end

end
