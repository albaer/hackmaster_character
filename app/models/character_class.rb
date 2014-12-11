class CharacterClass < ActiveRecord::Base
  has_many :character_class_associations
  has_many :characters, through: :character_class_associations
end
