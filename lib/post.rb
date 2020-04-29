class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title=nil, author=nil)
    @title = title
    @author = author
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def author_name
    return nil if author == nil
    author.name
  end
end
