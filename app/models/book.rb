class Book < ApplicationRecord
  belongs_to :author

  validates :name,
    presence: true,
    uniqueness: { case_sensitive: false, messege: "name has already been taken" },
    allow_nil: false,
    allow_blank: false
end
