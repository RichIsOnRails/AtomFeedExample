atom_feed do |feed|
  feed.title = "My Blog Posts"
  feed.updated @posts.maximum(:updated_at)

  @posts.each do |post|
    feed.entry post do |entry|
     entry.title post.title
     entry.content post.body
     entry.url post_path(post)
      entry.author do |author|
        author.name "Rich"
      end
    end # end feed.entry
  end # end @posts.each
end