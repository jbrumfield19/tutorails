class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.string :name
      t.integer :level_id
      t.integer :subject_id
      t.string :bio
      t.string :password_digest
      t.timestamps
    end
  end
end
