atom_feed do |feed|
  feed.title("Meu Blog!")
  feed.updated(@posts.first.created_at)

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(post.content, :type => 'html')
      entry.author{|author| author.name("Leandro Nunes")}
    end
  end
end
