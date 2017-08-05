class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :client_id, :date_created
  has_many :redemptions
  belongs_to :client
end
 