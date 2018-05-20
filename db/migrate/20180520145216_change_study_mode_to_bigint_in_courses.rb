class ChangeStudyModeToBigintInCourses < ActiveRecord::Migration[5.1]
  def change
    change_column :courses, :study_mode, 'bigint USING CAST(study_mode AS bigint)'
  end
end
