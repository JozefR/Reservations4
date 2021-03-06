# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  code        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  building_id :integer
#
# Indexes
#
#  index_rooms_on_building_id  (building_id)
#

class Room < ApplicationRecord
  belongs_to :building
  has_many :lessons
=begin
  validates :title, presence: true, length: {minimum: 3, maximum: 30}
  validates :code, presence: true, length: {minimum: 2, maximum: 20}
=end
  scope :with_building_id, -> (building_id) {
    where(building_id: building_id)
  }
end
