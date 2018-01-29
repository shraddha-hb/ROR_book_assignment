class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :reviewer_name, :ratings, :review_title, :review
  has_one :book
end
