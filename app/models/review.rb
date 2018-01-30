class Review < ApplicationRecord
  belongs_to :book, touch: true
  paginates_per 3
end
