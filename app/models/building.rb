# == Schema Information
#
# Table name: buildings
#
#  id         :integer          not null, primary key
#  title      :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Building < ApplicationRecord

  validates :title, presence: true, length: {minimum: 3, maximum: 30}
  validates :code, presence: true, length: {minimum: 2, maximum: 20}
end
