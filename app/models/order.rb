class Order < ApplicationRecord
  belongs_to :client
  has_many :redemptions
  has_many :product, through: :redemptions

  def credits_redeemed
    credits_redeemed = 0
    self.redemptions.each do |redemption|
      credits_redeemed += redemption.credits_redeemed
    end
    return credits_redeemed 
  end

  def credits_avail
    self.total_credits - self.credits_redeemed
  end

  def client_name
    self.client.name
  end

end
