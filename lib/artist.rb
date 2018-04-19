class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def save
    self.class.all << self
  end

end
