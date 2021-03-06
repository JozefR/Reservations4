# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  start_at   :datetime
#  end_at     :datetime
#  durration  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer
#  teacher_id :integer
#  course_id  :integer
#
# Indexes
#
#  index_lessons_on_course_id   (course_id)
#  index_lessons_on_room_id     (room_id)
#  index_lessons_on_teacher_id  (teacher_id)
#

class Lesson < ApplicationRecord
  belongs_to :room
  belongs_to :teacher
  belongs_to :course

  validates :durration, presence: true
  #validates :room_id, presence: true
  #validates :teacher_id, presence: true
  #validates :course_id, presence: true

  scope :with_room_id, -> (room_id) {
  where(room_id: room_id)
  }
end
