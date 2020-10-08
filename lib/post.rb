require 'pry'

class Post

  @@all = []

  attr_accessor :author, :title
  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

def author_name
    if !(self.author)
      return nil
    else
      self.author.title
    end
  end

end

