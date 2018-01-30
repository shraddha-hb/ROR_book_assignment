FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password {Faker::Internet.password}
    after :build do |user|
      user.authors << FactoryGirl.build(:author, user: user)
    end
  end
end
