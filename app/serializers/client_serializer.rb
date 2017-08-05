class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :type_id
  has_many :orders
  has_many :redemptions
  belongs_to :type
end
