# Index (index all artists) - GET "/artists"
get "/artists" do
  @artists = Artist.all.order(:name)
  erb :"artists/index"
end

# New (render form to create new artists) - GET "/artists/new"
get "/artists/new" do
  erb :"artists/new"
end

# Edit (render form to edit existing artist) - GET "/artists/:id/edit"
get "/artists/:id/edit" do
  puts " 🌟 " * 12
  @edit_this_artist = Artist.find(params[:id])
  erb :"artists/edit"
end

# Show (show particular artist) - GET "/artist/:id"
get "/artists/:id" do
  @each_artist = Artist.find(params[:id])
  erb :"artists/show"
end




# Create (submit form to create new artist) - POST "/artists"
# Update (submit form to update existing artist) - PUT "/artists/:id"
# Destroy (delete an existing artist) - DELETE "/artists/:id"
