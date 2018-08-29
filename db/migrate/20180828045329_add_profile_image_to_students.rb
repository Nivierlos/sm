class AddProfileImageToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :profile_image_id, :string
  end
end
