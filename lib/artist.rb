require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song

  end

  def save
    @@all << self
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    artist.name = name
    artist.save
    artist
  end

  def self.new_by_name(name)
    artist = Artist.new(name)
    artist.name = name
    artist
  end

  def self.find_by_name(name)
    @@all.detect{|x| x.name == name}
  end

  def self.find_or_create_by_name(name)
  self.all.detect {|x| x.name == name} || Artist.new(name)
   end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
