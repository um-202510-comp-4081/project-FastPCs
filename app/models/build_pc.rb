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
#
class BuildPc < ApplicationRecord
end
