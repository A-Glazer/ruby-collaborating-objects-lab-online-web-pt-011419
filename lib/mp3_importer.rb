require 'pry'
class MP3Importer
  attr_accessor :file

  def initialize(file)
    Dir["/spec/fixtures/**/*"].import
    binding.pry
  end


end
