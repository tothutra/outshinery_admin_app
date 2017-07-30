class CreateRedemptions < ActiveRecord::Migration[5.1]
  def change
    create_table :redemptions do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.date :date_redeemed
      t.text :note

      t.timestamps
    end
  end
end
