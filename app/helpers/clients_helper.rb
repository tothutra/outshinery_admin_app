module ClientsHelper
  def type_name(client)
    client.type.name
  end

  def number_of_orders(client)
    client.orders.length
  end

  def total_credits_ordered(client)
    total_credits_ordered = 0
    client.orders.each do |order|
      total_credits_ordered += order.total_credits
    end
    return total_credits_ordered
  end

  def total_credits_redeemed(client)
    total_credits_redeemed = 0
    client.orders.each do |order|
      total_credits_redeemed += order.credits_redeemed
    end
    return total_credits_redeemed
  end

  def total_credits_avail(client)
    self.total_credits_ordered(client) - self.total_credits_redeemed(client)
  end
end
