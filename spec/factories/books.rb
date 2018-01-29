FactoryGirl.define do
  factory :book do
    name "MyString"
    short_description "MyText"
    long_description "MyText"
    books_chapter_index "MyString"
    published_date "2018-01-29"
    genre "MyString"
    user nil
  end
end
