class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.integer :height
      t.integer :bmi
      t.integer :weight
      t.string :handed
      t.integer :building_points
      t.integer :honor
      t.integer :fame
      t.integer :level

      t.timestamps
    end
  end
end
