puts "review start ⭐"
Review.create(
    comment: 'nice product',
    star_rating: 5
)
Product.create(
    name: 'ball',
    description:'leather',
    price: 20
)

puts "reviews ends ⭐"