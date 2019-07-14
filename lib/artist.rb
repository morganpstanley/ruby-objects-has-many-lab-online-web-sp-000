require 'pry'

class Artist
  attr_accessor :name

  @@song_total = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
  end

  def self.song_count
    binding.pry
    Song.self.all
  end

end
