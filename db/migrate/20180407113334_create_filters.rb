class CreateFilters < ActiveRecord::Migration[5.1]
  def change
    create_table :filters do |t|
      t.string :name
      t.string :filter_type

      t.timestamps
    end
  end
end
