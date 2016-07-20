def post_picture
  click_link 'New Post'
  fill_in :'post[title]', with: 'Alex\'s Place'
  fill_in :'post[description]', with: 'Image taken in London'
  click_button 'Create Post'
end
