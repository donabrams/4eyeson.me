class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.integer :row
      t.integer :col
      t.string :contents

      t.timestamps
    end
  end
end
