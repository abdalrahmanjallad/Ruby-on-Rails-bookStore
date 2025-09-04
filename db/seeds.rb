
# Clear old data (for development/testing only)
Book.destroy_all
Author.destroy_all

puts "Seeding authors and books..."

authors = [
  {
    name: "George Orwell",
    age: 46,
    latest_book: "1984",
    books: [
      { name: "1984", description: "Dystopian novel about a totalitarian regime.", number_of_pages: 328 },
      { name: "Animal Farm", description: "Political satire with farm animals.", number_of_pages: 112 }
    ]
  },
  {
    name: "Jane Austen",
    age: 41,
    latest_book: "Emma",
    books: [
      { name: "Pride and Prejudice", description: "Classic romantic novel.", number_of_pages: 432 },
      { name: "Emma", description: "Story of youthful hubris and romantic mistakes.", number_of_pages: 474 }
    ]
  },
  {
    name: "Mark Twain",
    age: 74,
    latest_book: "Adventures of Huckleberry Finn",
    books: [
      { name: "The Adventures of Tom Sawyer", description: "Adventures of a boy growing up along the Mississippi River.", number_of_pages: 274 },
      { name: "Adventures of Huckleberry Finn", description: "Huck Finn's journey down the Mississippi River.", number_of_pages: 366 }
    ]
  },
  {
    name: "Agatha Christie",
    age: 85,
    latest_book: "And Then There Were None",
    books: [
      { name: "Murder on the Orient Express", description: "Detective Hercule Poirot investigates a murder on a train.", number_of_pages: 256 },
      { name: "And Then There Were None", description: "Ten strangers invited to a mysterious island.", number_of_pages: 272 }
    ]
  }
]

authors.each do |author_data|
  # Create author
  author = Author.create!(
    name: author_data[:name],
    age: author_data[:age],
    latest_book: author_data[:latest_book]
  )

  # Create books linked to that author
  author_data[:books].each do |book_data|
    author.books.create!(book_data)
  end
end

puts "✅ Done seeding!"

