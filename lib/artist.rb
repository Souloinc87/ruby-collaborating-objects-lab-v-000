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
    song.artist = self
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    song = self.new
    song.name = name
    song.save ||
    @@all.detect{|x| x.name == name}

  end 

end
