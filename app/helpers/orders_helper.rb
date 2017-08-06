module OrdersHelper
  def credits_redeemed(order)
    credits_redeemed = 0
    order.redemptions.each do |redemption|
      credits_redeemed += redemption.credits_redeemed
    end
    return credits_redeemed 
  end

  def credits_avail(order)
    order.total_credits - self.credits_redeemed(order)
  end

  def client_name(order)
    order.client.name
  end
end
