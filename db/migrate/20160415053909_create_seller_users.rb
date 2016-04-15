class CreateSellerUsers < ActiveRecord::Migration
  def change
    create_table :seller_users do |t|

      t.timestamps null: false
    end
  end
end
