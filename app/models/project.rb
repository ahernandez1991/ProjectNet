# == Schema Information
#
# Table name: projects
#
#  id         :bigint(8)        not null, primary key
#  nombre     :string(255)
#  fecha      :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#

class Project < ApplicationRecord
  belongs_to :user
  validates :nombre, presence: true
end
