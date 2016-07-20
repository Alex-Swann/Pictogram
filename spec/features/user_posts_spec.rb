
feature 'User Posts' do

  scenario 'user can create a post' do
    sign_in
    post_picture
    message = 'Title: Alex\'s Place Description: Image taken in London'
    expect(page).to have_content(message)
  end

  scenario 'user can direct back to posts homepage after picture post' do
    sign_in
    post_picture
    click_link 'Back'
    expect(page).to have_current_path('/posts')
  end

  scenario 'user can show/edit/delete posts' do
    sign_in
    post_picture
    click_link 'Back'
    expect(page).to have_selector(:link_or_button, 'Show')
    expect(page).to have_selector(:link_or_button, 'Edit')
    expect(page).to have_selector(:link_or_button, 'Destroy')
  end

end
