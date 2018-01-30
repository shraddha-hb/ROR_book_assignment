class Book < ApplicationRecord
  belongs_to :author, touch: true
  has_many :reviews, dependent: :destroy
  paginates_per 2

  searchable do
	 	string :name
		string	:short_description
		string	:long_description
		string	:genre
	end
end
