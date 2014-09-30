class Post
  # Access posts, files within views/posts
  # Attributes: title, url, filename, content

  # Read my list of post files.
  # Create an array of Post objects
  # with the attributes set
  # Post.all => [post, post]

  def initialize(array)

  end

  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      self.new(a)
    end
  end
end
