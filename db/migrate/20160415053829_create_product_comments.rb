class CreateProductComments < ActiveRecord::Migration
  def change
    create_table :product_comments do |t|

      t.timestamps null: false
    end
  end
end
