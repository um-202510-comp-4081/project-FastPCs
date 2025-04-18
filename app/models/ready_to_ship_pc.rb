# == Schema Information
#
# Table name: ready_to_ship_pcs
#
#  id          :bigint           not null, primary key
#  brand       :string
#  description :text
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  product_id  :bigint           not null
#
# Indexes
#
#  index_ready_to_ship_pcs_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class ReadyToShipPc < ApplicationRecord
  belongs_to :product
end
