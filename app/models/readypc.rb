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
#
class Readypc < ApplicationRecord
end
