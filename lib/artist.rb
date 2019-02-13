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

  def add_song(song)
    @songs << song
  end

  def save #this is an instance method so self would refer to an instance
    @@all << self #self is an instance of Artist class
  end

  def self.all #class method so self will refer to the class
    @@all
  end
end
