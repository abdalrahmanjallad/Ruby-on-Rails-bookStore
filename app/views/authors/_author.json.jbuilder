json.extract! author, :id, :name, :age, :latest_book, :created_at, :updated_at
json.url author_url(author, format: :json)
