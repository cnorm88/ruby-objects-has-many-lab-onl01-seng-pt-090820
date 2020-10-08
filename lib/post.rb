require 'pry'

# class Post

#   @@all = []

#   attr_accessor :author, :title
#   def initialize(title)
#     @title = title
#     save
#   end

#   def save
#     @@all << self
#   end

#   def self.all
#     @@all
#   end

# def author_name
#     if !(self.author)
#       return nil
#     else
#       self.author.title
#     end
#   end

# end

class Post

  attr_accessor :title, :author
  def initialize(title)
    @title = title
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end
