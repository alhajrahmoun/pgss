class AddDegreeToCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :degree, foreign_key: true
  end
end
