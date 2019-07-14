class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_title
    if @author == nil
      nil
    else
      @author.title
    end
  end
end
