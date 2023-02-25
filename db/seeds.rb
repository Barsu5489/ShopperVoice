# puts "review start ⭐"
# rating = Review.create(
#     comment: 'nice product',
#     star_rating: 5
# )
# product = Product.create(
#     name: 'ball',
#     description:'leather',
#     price: 20
# )
# person = User.create(
#     username: 'Kenyan'
# )
# puts "reviews ends ⭐"
# ActiveRecord::Base.transaction do
#   # Drop the tables in reverse order to avoid foreign key constraints
#   drop_table :reviews
#   drop_table :products
#   drop_table :users

#   # Add your seeding code here
# end
puts "review start ⭐"
10.times do
    User.create!(
      username: Faker::Name.name
    )
end

10.times do
    Product.create!(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.words(number: 10).join(" "),
      price: Faker::Commerce.price
    )
end
10.times do
    Review.create!(
      comment: Faker::Lorem.paragraph,
      star_rating: Faker::Number.between(from: 1, to: 5),
      product_id: Faker::Number.between(from: 1, to: 10),
      user_id: Faker::Number.between(from: 1, to: 10)
    )
  end
 puts "reviews ends ⭐"