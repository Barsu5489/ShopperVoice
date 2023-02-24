puts "review start ⭐"
rating = Review.create(
    comment: 'nice product',
    star_rating: 5
)
product = Product.create(
    name: 'ball',
    description:'leather',
    price: 20
)
person = User.create(
    username: 'Kenyan'
)
puts "reviews ends ⭐"