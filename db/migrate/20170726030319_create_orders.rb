class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :client_id
      t.date :date_created
      t.integer :total_credits

      t.timestamps
    end
  end
end
