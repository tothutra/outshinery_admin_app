class Client < ApplicationRecord
  has_many :orders
  belongs_to :type
  has_many :redemptions, through: :orders

  def type_name
    self.type.name
  end

  def number_of_orders
    self.orders.length
  end

  def total_credits_ordered
    total_credits_ordered = 0
    self.orders.each do |order|
      total_credits_ordered += order.total_credits
    end
    return total_credits_ordered
  end

  def total_credits_redeemed
    total_credits_redeemed = 0
    self.orders.each do |order|
      total_credits_redeemed += order.credits_redeemed
    end
    return total_credits_redeemed
  end

  def total_credits_avail
    self.total_credits_ordered - self.total_credits_redeemed
  end

end
