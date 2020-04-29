class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def add_post_by_name(name)
    add_post(Post.new(name, self))
  end

  def add_post(post)
    post.artist = self
  end

  def posts
    Post.all.select {|post| post.artist == self}
  end

  def self.post_count
    Post.all.length
  end
end
