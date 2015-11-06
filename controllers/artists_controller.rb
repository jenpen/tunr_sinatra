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
  @artist = Artist.find(params[:id])
  erb :"artists/edit"
end

# Show (show particular artist) - GET "/artist/:id"
get "/artists/:id" do
  @artist = Artist.find(params[:id])
  erb :"artists/show"
end

# Create (submit form to create new artist) - POST "/artists"
post "/artists" do
  @artist = Artist.create(params[:artist])
  redirect("/artists")
end


# Update (submit form to update existing artist) - PUT "/artists/:id"
put "/artists/:id" do
  @artist = Artist.find(params[:id])
  @artist.update(params[:artist])
  redirect("/artists/#{@artist.id}")
end

# Destroy (delete an existing artist) - DELETE "/artists/:id"

delete "/artists/:id" do
  @artist = Artist.find(params[:id])
  @artist.destroy
  redirect("/artists")
end
