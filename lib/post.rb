class Post
  # Access posts, files within views/posts
  # Attributes: title, url, filename, content

  # Read my list of post files.
  # Create an array of Post objects
  # with the attributes set
  # Post.all => [post, post]
  attr_accessor :title, :url

  def initialize(array)
    @title = array[-1].split(".")[0]
    @url   = "/posts/#{@title}"
  end

  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      self.new(a)
    end
  end
end
