class Genre
  attr_accessor :name
  @@all = []
  def initialize(name)
  @name = name
  @@all << self
  end
  def self.all
    @@all
  end
  def songs
   Song.all.select do |song|
    song.name
    end
  end
  def artists 
   Artist.all.select do |artist|
    artist.songs
    end
  end
end