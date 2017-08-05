class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :credit_value
  has_many :redemptions
end
