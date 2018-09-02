# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Homer', last_name: 'Simpson', email: 'homer.simpson@example.com', phone_number: '0931234567')
user2 = User.create(first_name: 'Marge', last_name: 'Simpson', email: 'marge.simpson@example.com', phone_number: '0937654321')
user3 = User.create(first_name: 'Bart', last_name: 'Simpson', email: 'bart.simpson@example.com', phone_number: '0934523671')
puts 'Three users were added'


post1 = Post.create(title: 'Homer loves beer', text: 'He loves it very much!', user: user1)
post2 = Post.create(title: 'Marge has blue hair', text: 'This is not related to the fact that Homer loves beer', user: user2)
post3 = Post.create(title: 'Bart always gets into troubles', text: 'But not as much as Homer', user: user3)
puts 'Three posts were added'

Comment.create(body: 'And I don\'t like that fact', user: user2, post: post1)
Comment.create(body: 'The first comment!', user: user3, post: post2)
Comment.create(body: 'The first comment!', user: user1, post: post2)
Comment.create(body: 'D\'oh!', user: user1, post: post2)
Comment.create(body: 'That\'s not true!', user: user1, post: post3)
Comment.create(body: 'That\'s true!', user: user2, post: post3)
puts 'Comments were added'
