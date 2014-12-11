class CharacterRaceAssociation < ActiveRecord::Base
  belongs_to :character
  belongs_to :race
end
