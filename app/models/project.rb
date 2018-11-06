# == Schema Information
#
# Table name: projects
#
#  id         :bigint(8)        not null, primary key
#  nombre     :string(255)
#  fecha      :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ApplicationRecord
  validates :nombre, presence: true
  validates :fecha, presence: true
end
