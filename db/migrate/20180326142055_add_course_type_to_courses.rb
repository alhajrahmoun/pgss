class AddCourseTypeToCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :course_type, foreign_key: true
  end
end
