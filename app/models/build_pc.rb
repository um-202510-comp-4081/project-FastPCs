# == Schema Information
#
# Table name: build_pcs
#
#  id         :bigint           not null, primary key
#  cpu        :string
#  gpu        :string
#  mobo       :string
#  name       :string
#  price      :decimal(, )
#  ram        :string
#  storage    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_build_pcs_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class BuildPc < ApplicationRecord
  belongs_to :product
end
