class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def user_reviews
        reviews
    end

    def user_products
        products
    end
end