FactoryGirl.define do
  factory :review do
    reviewer_name {Faker::Name.name}
    ratings {Faker::Number.between(1, 5)}
    review_title { Faker::Lorem.sentence }
    review {Faker::Lorem.paragraph}
    book 
  end
end
