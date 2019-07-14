class Author
  attr_accessor :name, :posts
  @@post_total = []

  def initialize(name)
    @name = name
  end

  def add_post(post)
    @posts << post
    post.artist = self
    @@post_total += 1
  end

  def add_post_by_name(post)
    post = Post.new(post)
    @posts << post
    post.author = self
    @@post_total += 1
  end

  def self.post_count
    @@post_total
  end

end
