class Client < ApplicationRecord
  has_many :orders
  has_many :redemptions, through: :orders
end
