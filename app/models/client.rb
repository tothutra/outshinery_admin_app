class Client < ApplicationRecord
  has_many :orders
  belongs_to :type
  has_many :redemptions, through: :orders
end
