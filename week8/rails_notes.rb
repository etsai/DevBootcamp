resources :cars do
  collection do
    get 'search' # cars/search
  end

  member do
    get "photo" #cars/:id/photo
  end

end

# The difference between collection and member is that member lets you specify the route based on a
# a specific member(id) within the collection.
# Collection refers to all.

# Use resources because it is more resourceful.
  # - Index
  # - New
  # - Create
  # - Show
  # - Edit
  # - Update
  # - Destroy

# Anything that is not 'GET' by convention will not render a view

redirect_to(@post) == post_path(@post) == 'posts/1'

