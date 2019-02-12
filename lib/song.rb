require 'pry'
class Song
  attr_reader :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
    # binding.pry
  end

  def artist=(artist)
    # self.artist.name
  end
end
