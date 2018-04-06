class AddCityToCourses < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :city, :string
    add_reference :courses, :city, foreign_key: true
  end
end
