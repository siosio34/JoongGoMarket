class CreateDealHistories < ActiveRecord::Migration
  def change
    create_table :deal_histories do |t|

      t.timestamps null: false
    end
  end
end
