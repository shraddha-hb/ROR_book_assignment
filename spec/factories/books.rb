FactoryGirl.define do
  factory :book do
		name { Faker::Book.title }
		books_chapter_index { Faker::FamilyGuy}
		genre { Faker::Book.genre }
		short_description { Faker::Lorem.paragraph(2)  }
		long_description { Faker::Lorem.paragraph }
		published_date {Faker::Date}
		books_chapter_index { Faker::Number.between(1, 100) }
		user
  end
end
