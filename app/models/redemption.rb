class Redemption < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def credits_redeemed
    self.product.credit_value
  end
end
