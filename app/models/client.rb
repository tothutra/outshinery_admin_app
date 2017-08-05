class Client < ApplicationRecord
  has_many :orders
  belongs_to :type
  has_many :redemptions, through: :orders

  def client_type
    self.type.name
  end

  def total_credits_ordered
    total_credits_ordered = 0
    self.orders.each do |order|
      total_credits_ordered += order.total_credits
    end
    return total_credits_ordered
  end
end
