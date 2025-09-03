class BookCreator
  def initialize(book_params)
    @book_params = book_params
  end

  def call
    item = Book.new(@book_params)

    if book.save
      { success: true, book: book }
    else
      { success: false, errors: book.errors.full_messages }
    end
  rescue => e
    { success: false, errors: ["System error: #{e.message}"] }
  end
end
