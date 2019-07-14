require 'pry'

class Artist
  attr_accessor :name

  @@song_total = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_total += 1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self.name
    @songs << song
    @@song_total += 1
  end

  def self.song_count
    @@song_total
  end

end
