# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_girl_rails'
Author.delete_all
User.delete_all
# user = User.create(email: "shraddha@gmail.com",password: "password")
10.times do
	FactoryGirl.create(:user)
end

# 10.times do
# 	# byebug
# 	FactoryGirl.create(:author)
# end

# 10.times do
# 	# byebug
# 	FactoryGirl.create(:book)
# end

# 50.times do
# 	# byebug
# 	FactoryGirl.create(:review)
# end
