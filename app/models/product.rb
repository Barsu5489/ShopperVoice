class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def product_reviews
        reviews
    end
    def product_users
        users
    end
    def print_all_reviews
        reviews.each do |review|
            puts "Review for #{name} by #{review.user.username}: #{review.star_rating}. #{review.comment}"
        end
    end

    def average_rating
        reviews.average(:star_rating).to_f
    end
end