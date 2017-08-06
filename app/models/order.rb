class Order < ApplicationRecord
  belongs_to :client
  has_many :redemptions
  has_many :product, through: :redemptions
end
