class AddSellerUserIdToSellerUserComments < ActiveRecord::Migration
  def change
    add_column :seller_user_comments, :seller_user_id, :integer
    add_index :seller_user_comments, :seller_user_id
  end
end
