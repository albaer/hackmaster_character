class Character < ActiveRecord::Base
  has_many :ability_scores #works
  has_many :abilities, through: :ability_scores #works
  has_one :character_race_association #works
  has_one :race, through: :character_race_association #works
  has_one :character_class_association #probably works
  has_one :chracter_class, through: :character_class_association #probably works

  accepts_nested_attributes_for :character_race_association
  accepts_nested_attributes_for :ability_scores
end
