# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :
  
       def create_cart_for_user
              create_cart
       end
       
       has_one :cart, dependent: :destroy
       
       after_create :create_cart_for_user
       
       devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable
       
       validates :password,
       length: { minimum: 6, message: 'must be at least 6 characters' },
       if:     -> { new_record? || !password.nil? }
       
       
end
