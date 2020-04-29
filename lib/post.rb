class Post
  attr_accessor :name, :author
  @@all = []

  def initialize(name=nil, author=nil)
    @name = name
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
