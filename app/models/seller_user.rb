class SellerUser < ActiveRecord::Base
    has_many :seller_user_comments, dependent: :destroy
end
