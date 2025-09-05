class author_creator
  def initialize(author_params)
    @author_params = author_params
  end

  def call
    author.new(@author_params)

    if author.save
      { success: true, author: author }
    else
      { success: false, errors: author.errors.full_messages }
    end

  rescue => e
    { success: false, errors: ["System error: #{e.message}"] }
  end
end
