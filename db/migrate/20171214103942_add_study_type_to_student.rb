class AddStudyTypeToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :StudyType, :integer
  end
end
