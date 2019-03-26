class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :level
      t.integer :subject_id
      t.string :bio

      t.timestamps
    end
  end
end
