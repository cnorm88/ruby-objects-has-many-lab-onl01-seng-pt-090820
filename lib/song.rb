require 'pry'

class Song

  @@all = []

  attr_accessor :artist, :name
 
  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
  
  def artist_name
    if !(self.artist)
      return nil
    else
      self.artist.name
    end
  end
end