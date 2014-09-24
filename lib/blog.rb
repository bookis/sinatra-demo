class Blog
  attr_accessor :href, :name
  def initialize(file)
    @href = file.split("views/").last.split(".erb").first
    @name = file.split("views/posts/").last.split(".erb").first
  end

  def self.files
    Dir.glob("views/posts/*").map do |file|
      new(file)
    end
  end
end
