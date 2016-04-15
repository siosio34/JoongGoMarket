class CreateSellerUserComments < ActiveRecord::Migration
  def change
    create_table :seller_user_comments do |t|

      t.timestamps null: false
    end
  end
end
