json.extract! book, :id, :name, :description, :number_of_pages, :created_at, :updated_at
json.author book.author_id
json.url book_url(book, format: :json)
