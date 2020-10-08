require 'pry'

# class Author
  
  attr_accessor :name
 
#   def initialize(name)
#     @name = name
#   end
 
#   def add_post(post)
#     post.author = self
#   end
 
#   def posts
#     Post.all.select {|post| post.author == self}
#   end
  
# def add_post_by_title(title)
#     post = Post.new(title)
#     post.author = self
#   end  
  
#   def self.post_count
#         Post.all.length {|post| post.author == self}
#   end
  
# end

class Author

  attr_accessor :name, :posts

  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end