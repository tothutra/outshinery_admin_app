# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client_list = [
  ["Melovino", 1],
  ["Cypress Brewing", 2],
  ["Farm Collective", 1],
  ["Mi Sueno", 1],
  ["Mikkeller", 2]
]

client_list.each do |name, type_id|
  Client.create(name: name, type_id: type_id)  
end

order_list = [
  [174, 1, 20170619, 56],
  [180, 2, 20170626, 10],
  [181, 3, 20170626, 50],
  [186, 4, 20170629, 30],
  [191, 5, 20170706, 7]
]

order_list.each do |order_id, client_id, date_created, total_credits|
  Order.create(order_id: order_id, client_id: client_id, date_created: date_created, total_credits: total_credits)  
end

product_list = [
  ["Traditional product shot", 1],
  ["Beauty shot", 1],
  ["Lifestyle shot", 2],
  ["Group shot", 1],
  ["Hi-res rendering", 1],
  ["Animated label", 3],
  ["Short video", 8],
  ["Long video", 15],
]

product_list.each do |name, credit_value|
  Product.create(name: name, credit_value: credit_value)
end

redemption_list = [
  [2, 1, 4, 20170628],
  [2, 1, 2, 20170630],
  [5, 1, 3, 20170706],
  [5, 1, 2, 20170707],
  [5, 1, 1, 20170712],
  [3, 1, 1, 20170717],
  [1, 1, 9, 20170718],
  [5, 1, 3, 20170718],
  [4, 3, 1, 20170721],
  [4, 3, 1, 20170724]
]

redemption_list.each do |order_id, product_id, quantity, date_redeemed|
  Redemption.create(order_id: order_id, product_id: product_id, quantity: quantity, date_redeemed: date_redeemed)
end

type_list = [
  "Wine",
  "Beer",
  "Creatives",
  "Spirits",
  "Combo"
]

type_list.each do |name|
  Type.create(name: name)
end
