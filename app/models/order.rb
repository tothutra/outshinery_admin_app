class Order < ApplicationRecord
  belongs_to :client
  has_many :redemptions

  def credits_redeemed
    credits_redeemed = 0
    self.redemptions.each do |redemption|
      credits_redeemed += redemption.credits_redeemed
    end
    return credits_redeemed 
  end

end
