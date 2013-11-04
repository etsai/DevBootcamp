get '/' do
  @photos = Photo.all
  @albums = Album.all
  erb :index
end

post '/' do
  photo = Photo.new()
  photo.file = params[:filename]
  photo.save
  redirect '/'
end

get '/album/:album_id' do
  @photos = Photo.where(:album_id => params[:album_id])

end

# get '/upload' do
#   if current_user
#     erb :index
#   else
#     erb :login
#   end
# end



# post '/albums/:id' do
#   photo = current_user.albums.find(params[:id]).photos.new()
#   photo.file = params[:filename]
#   photo.save
# end