FactoryGirl.define do
  factory :book do
		name { Faker::Book.title }
		genre { Faker::Book.genre }
		short_description { Faker::Lorem.paragraph(2)  }
		long_description { Faker::Lorem.paragraph }
		published_date {Faker::Date.between(2.days.ago, Date.today)}
		books_chapter_index { Faker::Number.between(1, 100) }
		author { Author.offset(rand(Author.count)).first.id }
		after :build do |book|
	    book.reviews << FactoryGirl.build(:review, book: book)
	  end
  end
end
