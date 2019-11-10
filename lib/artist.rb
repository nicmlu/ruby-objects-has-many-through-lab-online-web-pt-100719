class Artist 
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name 
    @@all.push(self)
  end 
  
  def self.all
    @@all
  end 
  
  def songs
    Song.all.select {|song| song.artist == self}
  end 
  
  def new_song(title, genre)
    new_song = Song.new(title, self, genre)
  end 
  
  def genres 
    songs.map {|song| song.genre}
  end 
end 