# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# books = Book.create([
#   { 
#     name: 'The Power of Positive Thinking',
#     price: 12.9,
#     author: 'Norman Vincent Peale',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'Atomic Habits',
#     price: 13.8,
#     author: 'James Clear',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'The Power of Habits',
#     price: 10.9,
#     author: 'Charles Duhigg',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'Attitude Is Everything: Change Your Attitude ... Change Your Life!',
#     price: 9.99,
#     author: 'Jeff Keller',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'You Can',
#     price: 4.0,
#     author: 'George Matthew Adams',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'The Power of Your Subconscious Mind',
#     price: 9.0,
#     author: 'Joseph Murphy',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'Commit to Yourself',
#     price: 9.75,
#     author: 'Nancy Katyal ',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'The Art of Focus: 45 Stories to Uplift the Mind and Transform the Heart',
#     price: 11.78,
#     author: 'Gauranga Das',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'Memory: How To Develop, Train, And Use It',
#     price: 13.9,
#     author: 'William Walker Atkinson',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   },
#   {
#     name: 'The Ultimate Guide To Success',
#     price: 12.99,
#     author: 'M.D. Julia Seton',
#     category: 'Self Help',
#     buy_link: 'https://somebooksellingsite.com/purchase'
#   }
# ])

puts "creating Users"

100.times do |i|
 User.create(
    name: Faker::Name.name_with_middle,
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    contact: Faker::PhoneNumber::cell_phone_with_country_code
  )

 puts "User #{i+1} has been created"
end