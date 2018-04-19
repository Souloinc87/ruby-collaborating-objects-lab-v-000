class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename
    name_split = filename.split(" - ")
    song = self.new(name_split[1])
    artist = Artist.find_or_create_by_name(name_split[0])
    song.artist = artist
    artist.add_song(song)
  end

end
