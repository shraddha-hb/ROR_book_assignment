FactoryGirl.define do
  factory :review do
    reviewer_name "MyString"
    ratings "9.99"
    review_title "MyString"
    review "MyText"
    book nil
  end
end
