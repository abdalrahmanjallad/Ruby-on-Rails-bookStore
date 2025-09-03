json.extract! book, :id, :name, :auther, :description, :number_of_pages, :created_at, :updated_at
json.url book_url(book, format: :json)
