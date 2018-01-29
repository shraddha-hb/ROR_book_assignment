class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :short_description, :long_description, :books_chapter_index, :published_date, :genre
  has_one :user
end
