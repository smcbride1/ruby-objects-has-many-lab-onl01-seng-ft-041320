class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name=nil, artist=nil)
    @name = name
    @artist = artist
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def artist_name
    return nil if artist == nil
    artist.name
  end
end
