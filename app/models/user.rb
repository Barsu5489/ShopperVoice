class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def user_reviews
        # Review.where(user_id: self.id)
        reviews
    end

    def user_products
        products
    end

    def favorite_product
        reviews.order(star_rating: :desc).first.product
      end
    def remove_reviews(product)
        reviews.where(product_id: product.id).destroy_all
    end
end