# Index (index all artists) - GET "/artists"
get "/artists" do
  puts " 🌟 " * 12
  @artists = Artist.all
  erb(:"artists/index")
end


# Show (show particular artist) - GET "/artist/:id"
# New (render form to create new artists) - GET "/artists/new"
# Edit (render form to edit existing artist) - GET "/artists/:id/edit"
# Create (submit form to create new artist) - POST "/artists"
# Update (submit form to update existing artist) - PUT "/artists/:id"
# Destroy (delete an existing artist) - DELETE "/artists/:id"
