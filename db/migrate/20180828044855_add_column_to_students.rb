class AddColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :profile_picture, :integer
  end
end
