class Race < ActiveRecord::Base
  has_many :character_race_associations #works
  has_many :characters, through: :character_race_associations #works
end
