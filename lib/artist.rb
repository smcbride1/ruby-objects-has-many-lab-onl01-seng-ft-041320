class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def add_song_by_name(name)
    add_song(Song.new(name, self))
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.length
  end
end
