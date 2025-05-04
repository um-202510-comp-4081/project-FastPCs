# == Schema Information
#
# Table name: accessories
#
#  id          :bigint           not null, primary key
#  description :text
#  image       :string
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  product_id  :bigint           not null
#
# Indexes
#
#  index_accessories_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class Accessory < ApplicationRecord
  belongs_to :product
end
