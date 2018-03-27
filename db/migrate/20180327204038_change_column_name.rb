class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :universities, :type, :university_type
  end
end