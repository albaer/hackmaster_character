class CreateCharacterRaceAssociations < ActiveRecord::Migration
  def change
    create_table :character_race_associations do |t|
      t.integer :character_id
      t.integer :race_id

      t.timestamps
    end
  end
end
