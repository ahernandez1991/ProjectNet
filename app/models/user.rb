# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password validations: false
  validates :name, presence: true
  validates :password, presence: true
end
