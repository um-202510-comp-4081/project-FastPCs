# == Schema Information
#
# Table name: products
#
#  id           :bigint           not null, primary key
#  description  :text
#  image        :string
#  name         :string
#  price        :decimal(, )
#  product_type :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Product < ApplicationRecord
  has_many :cart_items
  has_one :ready_to_ship_pc
  has_one :build_pc
  has_many :accessories
end
