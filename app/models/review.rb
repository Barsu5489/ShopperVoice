class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :user


    def review_user
        user
    end
    def review_product
        product
    end
end
