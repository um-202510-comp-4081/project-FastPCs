# == Schema Information
#
# Table name: readypcs
#
#  id         :bigint           not null, primary key
#  brand      :string
#  color      :string
#  name       :string
#  price      :decimal(, )
#  processor  :string
#  ram        :integer
#  size       :decimal(, )
#  storage    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_readypcs_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class Readypc < ApplicationRecord
  belongs_to :product
end
