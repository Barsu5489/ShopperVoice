class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def product_reviews
        reviews
    end
    def product_users
        users
    end
end