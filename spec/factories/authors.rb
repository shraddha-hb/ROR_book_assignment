FactoryGirl.define do
	factory :author do
		name { Faker::Book.author }
		bio { Faker::FamilyGuy}
		avatar { Faker::Avatar.image }
		academics { Faker::Lorem.paragraph(2)  }
		awards { Faker::Lorem.paragraph }
		user { User.offset(rand(User.count)).first.id }
		after :build do |author|
	    author.books << FactoryGirl.build(:book, author: author)
	  end
	end
end
