class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :client_id, :date_created, :status
end
