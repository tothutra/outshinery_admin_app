class RedemptionSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :product_id, :quantity, :date_redeemed
end
