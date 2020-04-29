class Song 
  attr_accessor :name
  attr_reader :artist
  @@all = []
  
  def initialize(name=nil, artist=nil)
    @name = name
    @artist = artist
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def artist=(artist)
    if @artist == nil
      @artist = artist
      artist.songs.push(self)
    else
      @artist = artist
    end
  end

  def artist_name
    return nil if artist == nil
    artist.name
  end
end
