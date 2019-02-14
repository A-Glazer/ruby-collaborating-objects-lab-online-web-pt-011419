class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    # One way of doing this
    # @files = []
    # file = Dir.entries(@path)
    # file.each do |song|
    #   @files << song if song.include?(".mp3")
    # end
    # @files

    #Another way of doing this
     Dir.entries(path).select {|entry| entry.include?(".mp3")}
     #select is good because it only returns the answers you want and you don't need to make a new array

  end

  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end
end
