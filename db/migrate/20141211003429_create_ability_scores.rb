class CreateAbilityScores < ActiveRecord::Migration
  def change
    create_table :ability_scores do |t|
      t.integer :character_id
      t.integer :ability_id
      t.integer :level_score
      t.integer :experience_score

      t.timestamps
    end
  end
end
