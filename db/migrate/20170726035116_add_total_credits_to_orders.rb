class AddTotalCreditsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :total_credits, :integer
  end
end
