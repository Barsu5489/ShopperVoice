class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :user


    def review_user
        user
    end
    def review_product
        product
    end
    def print_review
        puts "Review for #{product.name} by #{user.username}: #{self.star_rating} #{self.comment}"
    end
end
