class Author < ApplicationRecord
  belongs_to :user, touch: true
  paginates_per 2
  has_many :books, dependent: :destroy
end
