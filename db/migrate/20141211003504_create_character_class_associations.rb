class CreateCharacterClassAssociations < ActiveRecord::Migration
  def change
    create_table :character_class_associations do |t|
      t.integer :character_id
      t.integer :character_class_id

      t.timestamps
    end
  end
end
