class CreateHodHods < ActiveRecord::Migration[5.2]
  def change
    create_table :hod_hods do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.integer :department_id
      t.string :sex
      t.integer :phone

      t.timestamps
    end
  end
end
