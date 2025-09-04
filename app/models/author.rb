class Author < ApplicationRecord
  has_many :books

    validates :name, presence: true, length: { minimum: 2, maximum: 100 }
    validates :age, numericality: {
          only_integer: true,
              greater_than_or_equal_to: 18
    }
end
