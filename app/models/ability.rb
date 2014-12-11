class Ability < ActiveRecord::Base
  has_many :characters, through: :ability_scores #works
  has_many :ability_scores #works
end
