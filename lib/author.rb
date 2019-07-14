class Author
  attr_accessor :title, :posts
  @@post_total = []

  def initialize(title)
    @title = title
  end

  def add_post(post)
    @posts << post
    post.artist = self
    @@post_total += 1
  end

  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post
    post.author = self
    @@post_total += 1
  end

  def self.post_count
    @@post_total
  end

end
