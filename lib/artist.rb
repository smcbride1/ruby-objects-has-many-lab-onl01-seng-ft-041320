class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all.push(self)
  end

  def add_song_by_name(name)
    add_song(Song.new(name, self))
  end

  def add_song(song)
    song.artist = self
    songs.push(song)
  end

  def self.song_count
    count = 0
    @@all.each {|artist| count += artist.songs.length}
    count
  end
end

adele = Artist.new("Adele")
adele.add_song_by_name("Rolling In The Deep")
puts adele.song_count
