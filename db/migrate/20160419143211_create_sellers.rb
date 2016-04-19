class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.references :customer, index: true, foreign_key: true
      t.integer :sellcount
      t.integer :profit
      t.integer :grade
      t.string :phonenumber
      t.text :intro
      t.string :bank
      t.integer :banknumber

      t.timestamps null: false
    end
  end
end
