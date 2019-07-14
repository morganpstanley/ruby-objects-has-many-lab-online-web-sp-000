require 'pry'

class Artist
  attr_accessor :name

  @@song_total = []

  def initialize(name)
    @name = name
    @songs = []
    @@song_total << name
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
    @@song_total
  end

end
