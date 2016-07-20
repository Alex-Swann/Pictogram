def post_picture(name = 'Alex\'s Place', desc = 'Image taken in London')
  click_link 'New Post'
  fill_in :'post[title]', with: name
  fill_in :'post[description]', with: desc
  click_button 'Create Post'
end
