class AddSellerUserIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :seller_user_id, :integer
    add_index :products, :seller_user_id
  end
end
