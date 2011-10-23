class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.text :note
      t.decimal :percent
      t.integer :student_id

      t.timestamps
    end
  end
end
